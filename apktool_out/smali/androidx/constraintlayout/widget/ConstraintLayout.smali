.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static C:Lx/f;


# instance fields
.field public A:I

.field public B:I

.field public final b:Landroid/util/SparseArray;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lu/f;

.field public j:I

.field public m:I

.field public n:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Landroidx/constraintlayout/widget/l;

.field public t:Lx/b;

.field public u:I

.field public v:Ljava/util/HashMap;

.field public w:I

.field public x:I

.field public final y:Landroid/util/SparseArray;

.field public final z:Lx/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lu/f;

    invoke-direct {p1}, Lu/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/b;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Lx/a;

    invoke-direct {v0, p0, p0}, Lx/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 21
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Lu/f;

    invoke-direct {p1}, Lu/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const v0, 0x7fffffff

    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    const/16 v0, 0x101

    .line 31
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 33
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/b;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Lx/a;

    invoke-direct {v0, p0, p0}, Lx/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:I

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 42
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Lx/f;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:Lx/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lx/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lx/f;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:Lx/f;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:Lx/f;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lu/e;->setCompanionWidget(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lu/f;->setMeasurer(Lv/c;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 22
    .line 23
    if-eqz p1, :cond_8

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    move v2, v4

    .line 41
    :goto_0
    if-ge v2, p2, :cond_7

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    .line 48
    .line 49
    if-ne v3, v5, :cond_0

    .line 50
    .line 51
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 52
    .line 53
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    .line 61
    .line 62
    if-ne v3, v5, :cond_1

    .line 63
    .line 64
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 65
    .line 66
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    .line 74
    .line 75
    if-ne v3, v5, :cond_2

    .line 76
    .line 77
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 78
    .line 79
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    .line 87
    .line 88
    if-ne v3, v5, :cond_3

    .line 89
    .line 90
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 91
    .line 92
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    .line 100
    .line 101
    if-ne v3, v5, :cond_4

    .line 102
    .line 103
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 104
    .line 105
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    .line 113
    .line 114
    if-ne v3, v5, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/b;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    .line 130
    .line 131
    if-ne v3, v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    :try_start_1
    new-instance v5, Landroidx/constraintlayout/widget/l;

    .line 138
    .line 139
    invoke-direct {v5}, Landroidx/constraintlayout/widget/l;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/widget/l;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 153
    .line 154
    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 155
    .line 156
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    .line 161
    .line 162
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lu/f;->setOptimizationLevel(I)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public applyConstraintsFromLayoutParams(ZLandroid/view/View;Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lu/e;",
            "Landroidx/constraintlayout/widget/e;",
            "Landroid/util/SparseArray<",
            "Lu/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/e;->validate()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lu/e;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lu/e;->setCompanionWidget(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    instance-of v2, v0, Landroidx/constraintlayout/widget/c;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroidx/constraintlayout/widget/c;

    .line 27
    .line 28
    move-object/from16 v8, p0

    .line 29
    .line 30
    iget-object v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 31
    .line 32
    invoke-virtual {v2}, Lu/f;->isRtl()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/c;->resolveRtl(Lu/e;Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object/from16 v8, p0

    .line 41
    .line 42
    :goto_0
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/e;->d0:Z

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    move-object v0, v1

    .line 48
    check-cast v0, Lu/i;

    .line 49
    .line 50
    iget v1, v6, Landroidx/constraintlayout/widget/e;->m0:I

    .line 51
    .line 52
    iget v2, v6, Landroidx/constraintlayout/widget/e;->n0:I

    .line 53
    .line 54
    iget v3, v6, Landroidx/constraintlayout/widget/e;->o0:F

    .line 55
    .line 56
    const/high16 v4, -0x40800000    # -1.0f

    .line 57
    .line 58
    cmpl-float v4, v3, v4

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lu/i;->setGuidePercent(F)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    if-eq v1, v9, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lu/i;->setGuideBegin(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    if-eq v2, v9, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lu/i;->setGuideEnd(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :cond_4
    iget v0, v6, Landroidx/constraintlayout/widget/e;->f0:I

    .line 79
    .line 80
    iget v2, v6, Landroidx/constraintlayout/widget/e;->g0:I

    .line 81
    .line 82
    iget v10, v6, Landroidx/constraintlayout/widget/e;->h0:I

    .line 83
    .line 84
    iget v11, v6, Landroidx/constraintlayout/widget/e;->i0:I

    .line 85
    .line 86
    iget v5, v6, Landroidx/constraintlayout/widget/e;->j0:I

    .line 87
    .line 88
    iget v12, v6, Landroidx/constraintlayout/widget/e;->k0:I

    .line 89
    .line 90
    iget v13, v6, Landroidx/constraintlayout/widget/e;->l0:F

    .line 91
    .line 92
    iget v3, v6, Landroidx/constraintlayout/widget/e;->p:I

    .line 93
    .line 94
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 95
    .line 96
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 97
    .line 98
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 99
    .line 100
    sget-object v16, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 101
    .line 102
    if-eq v3, v9, :cond_6

    .line 103
    .line 104
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lu/e;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget v2, v6, Landroidx/constraintlayout/widget/e;->r:F

    .line 113
    .line 114
    iget v3, v6, Landroidx/constraintlayout/widget/e;->q:I

    .line 115
    .line 116
    invoke-virtual {v1, v0, v2, v3}, Lu/e;->connectCircularConstraint(Lu/e;FI)V

    .line 117
    .line 118
    .line 119
    :cond_5
    move-object v0, v1

    .line 120
    move-object v10, v4

    .line 121
    move-object v2, v6

    .line 122
    move-object v11, v14

    .line 123
    move-object v1, v15

    .line 124
    move-object/from16 v12, v16

    .line 125
    .line 126
    goto/16 :goto_b

    .line 127
    .line 128
    :cond_6
    if-eq v0, v9, :cond_9

    .line 129
    .line 130
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v2, v0

    .line 135
    check-cast v2, Lu/e;

    .line 136
    .line 137
    if-eqz v2, :cond_7

    .line 138
    .line 139
    move-object v3, v4

    .line 140
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 141
    .line 142
    move-object v1, v3

    .line 143
    move-object/from16 v0, p3

    .line 144
    .line 145
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    move-object v1, v4

    .line 150
    :cond_8
    :goto_1
    move-object v3, v1

    .line 151
    move-object v1, v14

    .line 152
    goto :goto_2

    .line 153
    :cond_9
    move-object v1, v4

    .line 154
    if-eq v2, v9, :cond_8

    .line 155
    .line 156
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    move-object v2, v0

    .line 161
    check-cast v2, Lu/e;

    .line 162
    .line 163
    if-eqz v2, :cond_8

    .line 164
    .line 165
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 166
    .line 167
    move-object/from16 v0, p3

    .line 168
    .line 169
    move-object v3, v14

    .line 170
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 171
    .line 172
    .line 173
    move-object/from16 v17, v3

    .line 174
    .line 175
    move-object v3, v1

    .line 176
    move-object/from16 v1, v17

    .line 177
    .line 178
    :goto_2
    if-eq v10, v9, :cond_c

    .line 179
    .line 180
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object v2, v0

    .line 185
    check-cast v2, Lu/e;

    .line 186
    .line 187
    if-eqz v2, :cond_a

    .line 188
    .line 189
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 190
    .line 191
    move-object/from16 v0, p3

    .line 192
    .line 193
    move v5, v12

    .line 194
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 195
    .line 196
    .line 197
    :cond_a
    move-object v10, v3

    .line 198
    :cond_b
    :goto_3
    move-object v11, v1

    .line 199
    goto :goto_4

    .line 200
    :cond_c
    move-object v10, v3

    .line 201
    move v5, v12

    .line 202
    if-eq v11, v9, :cond_b

    .line 203
    .line 204
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    move-object v2, v0

    .line 209
    check-cast v2, Lu/e;

    .line 210
    .line 211
    if-eqz v2, :cond_b

    .line 212
    .line 213
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 214
    .line 215
    move-object v3, v1

    .line 216
    move-object/from16 v0, p3

    .line 217
    .line 218
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :goto_4
    iget v0, v6, Landroidx/constraintlayout/widget/e;->i:I

    .line 223
    .line 224
    if-eq v0, v9, :cond_f

    .line 225
    .line 226
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    move-object v2, v0

    .line 231
    check-cast v2, Lu/e;

    .line 232
    .line 233
    if-eqz v2, :cond_d

    .line 234
    .line 235
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 236
    .line 237
    iget v5, v6, Landroidx/constraintlayout/widget/e;->x:I

    .line 238
    .line 239
    move-object/from16 v3, v16

    .line 240
    .line 241
    move-object/from16 v0, p3

    .line 242
    .line 243
    move-object/from16 v1, v16

    .line 244
    .line 245
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_d
    move-object/from16 v1, v16

    .line 250
    .line 251
    :cond_e
    :goto_5
    move-object v3, v1

    .line 252
    move-object v1, v15

    .line 253
    goto :goto_6

    .line 254
    :cond_f
    move-object/from16 v1, v16

    .line 255
    .line 256
    iget v0, v6, Landroidx/constraintlayout/widget/e;->j:I

    .line 257
    .line 258
    if-eq v0, v9, :cond_e

    .line 259
    .line 260
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object v2, v0

    .line 265
    check-cast v2, Lu/e;

    .line 266
    .line 267
    if-eqz v2, :cond_e

    .line 268
    .line 269
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 270
    .line 271
    iget v5, v6, Landroidx/constraintlayout/widget/e;->x:I

    .line 272
    .line 273
    move-object/from16 v0, p3

    .line 274
    .line 275
    move-object v3, v15

    .line 276
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 277
    .line 278
    .line 279
    move-object/from16 v17, v3

    .line 280
    .line 281
    move-object v3, v1

    .line 282
    move-object/from16 v1, v17

    .line 283
    .line 284
    :goto_6
    iget v0, v6, Landroidx/constraintlayout/widget/e;->k:I

    .line 285
    .line 286
    if-eq v0, v9, :cond_12

    .line 287
    .line 288
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    move-object v2, v0

    .line 293
    check-cast v2, Lu/e;

    .line 294
    .line 295
    if-eqz v2, :cond_10

    .line 296
    .line 297
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 298
    .line 299
    iget v5, v6, Landroidx/constraintlayout/widget/e;->z:I

    .line 300
    .line 301
    move-object/from16 v0, p3

    .line 302
    .line 303
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 304
    .line 305
    .line 306
    :cond_10
    move-object v12, v3

    .line 307
    :cond_11
    :goto_7
    move-object v14, v1

    .line 308
    goto :goto_8

    .line 309
    :cond_12
    move-object v12, v3

    .line 310
    iget v0, v6, Landroidx/constraintlayout/widget/e;->l:I

    .line 311
    .line 312
    if-eq v0, v9, :cond_11

    .line 313
    .line 314
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    move-object v2, v0

    .line 319
    check-cast v2, Lu/e;

    .line 320
    .line 321
    if-eqz v2, :cond_11

    .line 322
    .line 323
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 324
    .line 325
    iget v5, v6, Landroidx/constraintlayout/widget/e;->z:I

    .line 326
    .line 327
    move-object v3, v1

    .line 328
    move-object/from16 v0, p3

    .line 329
    .line 330
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :goto_8
    iget v4, v6, Landroidx/constraintlayout/widget/e;->m:I

    .line 335
    .line 336
    if-eq v4, v9, :cond_14

    .line 337
    .line 338
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 339
    .line 340
    move-object/from16 v1, p3

    .line 341
    .line 342
    move-object v2, v6

    .line 343
    move-object v3, v7

    .line 344
    move-object v0, v8

    .line 345
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 346
    .line 347
    .line 348
    :cond_13
    :goto_9
    move-object/from16 v0, p3

    .line 349
    .line 350
    move-object v1, v14

    .line 351
    goto :goto_a

    .line 352
    :cond_14
    move-object v2, v6

    .line 353
    iget v4, v2, Landroidx/constraintlayout/widget/e;->n:I

    .line 354
    .line 355
    if-eq v4, v9, :cond_15

    .line 356
    .line 357
    move-object/from16 v0, p0

    .line 358
    .line 359
    move-object/from16 v1, p3

    .line 360
    .line 361
    move-object/from16 v3, p5

    .line 362
    .line 363
    move-object v5, v12

    .line 364
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 365
    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_15
    iget v4, v2, Landroidx/constraintlayout/widget/e;->o:I

    .line 369
    .line 370
    if-eq v4, v9, :cond_13

    .line 371
    .line 372
    move-object/from16 v0, p0

    .line 373
    .line 374
    move-object/from16 v1, p3

    .line 375
    .line 376
    move-object/from16 v3, p5

    .line 377
    .line 378
    move-object v5, v14

    .line 379
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 380
    .line 381
    .line 382
    move-object v0, v1

    .line 383
    move-object v1, v5

    .line 384
    :goto_a
    const/4 v3, 0x0

    .line 385
    cmpl-float v4, v13, v3

    .line 386
    .line 387
    if-ltz v4, :cond_16

    .line 388
    .line 389
    invoke-virtual {v0, v13}, Lu/e;->setHorizontalBiasPercent(F)V

    .line 390
    .line 391
    .line 392
    :cond_16
    iget v4, v2, Landroidx/constraintlayout/widget/e;->F:F

    .line 393
    .line 394
    cmpl-float v3, v4, v3

    .line 395
    .line 396
    if-ltz v3, :cond_17

    .line 397
    .line 398
    invoke-virtual {v0, v4}, Lu/e;->setVerticalBiasPercent(F)V

    .line 399
    .line 400
    .line 401
    :cond_17
    :goto_b
    if-eqz p1, :cond_19

    .line 402
    .line 403
    iget v3, v2, Landroidx/constraintlayout/widget/e;->T:I

    .line 404
    .line 405
    if-ne v3, v9, :cond_18

    .line 406
    .line 407
    iget v4, v2, Landroidx/constraintlayout/widget/e;->U:I

    .line 408
    .line 409
    if-eq v4, v9, :cond_19

    .line 410
    .line 411
    :cond_18
    iget v4, v2, Landroidx/constraintlayout/widget/e;->U:I

    .line 412
    .line 413
    invoke-virtual {v0, v3, v4}, Lu/e;->setOrigin(II)V

    .line 414
    .line 415
    .line 416
    :cond_19
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/e;->a0:Z

    .line 417
    .line 418
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 419
    .line 420
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 421
    .line 422
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 423
    .line 424
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 425
    .line 426
    const/4 v8, -0x2

    .line 427
    const/4 v13, 0x0

    .line 428
    if-nez v3, :cond_1c

    .line 429
    .line 430
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 431
    .line 432
    if-ne v3, v9, :cond_1b

    .line 433
    .line 434
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/e;->W:Z

    .line 435
    .line 436
    if-eqz v3, :cond_1a

    .line 437
    .line 438
    invoke-virtual {v0, v7}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 439
    .line 440
    .line 441
    goto :goto_c

    .line 442
    :cond_1a
    invoke-virtual {v0, v6}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 443
    .line 444
    .line 445
    :goto_c
    invoke-virtual {v0, v10}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 450
    .line 451
    iput v10, v3, Lu/d;->g:I

    .line 452
    .line 453
    invoke-virtual {v0, v11}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 458
    .line 459
    iput v10, v3, Lu/d;->g:I

    .line 460
    .line 461
    goto :goto_d

    .line 462
    :cond_1b
    invoke-virtual {v0, v7}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v13}, Lu/e;->setWidth(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_1c
    invoke-virtual {v0, v5}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 470
    .line 471
    .line 472
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Lu/e;->setWidth(I)V

    .line 475
    .line 476
    .line 477
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 478
    .line 479
    if-ne v3, v8, :cond_1d

    .line 480
    .line 481
    invoke-virtual {v0, v4}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 482
    .line 483
    .line 484
    :cond_1d
    :goto_d
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/e;->b0:Z

    .line 485
    .line 486
    if-nez v3, :cond_20

    .line 487
    .line 488
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 489
    .line 490
    if-ne v3, v9, :cond_1f

    .line 491
    .line 492
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/e;->X:Z

    .line 493
    .line 494
    if-eqz v3, :cond_1e

    .line 495
    .line 496
    invoke-virtual {v0, v7}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 497
    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_1e
    invoke-virtual {v0, v6}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 501
    .line 502
    .line 503
    :goto_e
    invoke-virtual {v0, v12}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 508
    .line 509
    iput v4, v3, Lu/d;->g:I

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 516
    .line 517
    iput v3, v1, Lu/d;->g:I

    .line 518
    .line 519
    goto :goto_f

    .line 520
    :cond_1f
    invoke-virtual {v0, v7}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v13}, Lu/e;->setHeight(I)V

    .line 524
    .line 525
    .line 526
    goto :goto_f

    .line 527
    :cond_20
    invoke-virtual {v0, v5}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 528
    .line 529
    .line 530
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Lu/e;->setHeight(I)V

    .line 533
    .line 534
    .line 535
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 536
    .line 537
    if-ne v1, v8, :cond_21

    .line 538
    .line 539
    invoke-virtual {v0, v4}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 540
    .line 541
    .line 542
    :cond_21
    :goto_f
    iget-object v1, v2, Landroidx/constraintlayout/widget/e;->G:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Lu/e;->setDimensionRatio(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget v1, v2, Landroidx/constraintlayout/widget/e;->H:F

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Lu/e;->setHorizontalWeight(F)V

    .line 550
    .line 551
    .line 552
    iget v1, v2, Landroidx/constraintlayout/widget/e;->I:F

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lu/e;->setVerticalWeight(F)V

    .line 555
    .line 556
    .line 557
    iget v1, v2, Landroidx/constraintlayout/widget/e;->J:I

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Lu/e;->setHorizontalChainStyle(I)V

    .line 560
    .line 561
    .line 562
    iget v1, v2, Landroidx/constraintlayout/widget/e;->K:I

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Lu/e;->setVerticalChainStyle(I)V

    .line 565
    .line 566
    .line 567
    iget v1, v2, Landroidx/constraintlayout/widget/e;->Z:I

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Lu/e;->setWrapBehaviorInParent(I)V

    .line 570
    .line 571
    .line 572
    iget v1, v2, Landroidx/constraintlayout/widget/e;->L:I

    .line 573
    .line 574
    iget v3, v2, Landroidx/constraintlayout/widget/e;->N:I

    .line 575
    .line 576
    iget v4, v2, Landroidx/constraintlayout/widget/e;->P:I

    .line 577
    .line 578
    iget v5, v2, Landroidx/constraintlayout/widget/e;->R:F

    .line 579
    .line 580
    invoke-virtual {v0, v1, v3, v4, v5}, Lu/e;->setHorizontalMatchStyle(IIIF)V

    .line 581
    .line 582
    .line 583
    iget v1, v2, Landroidx/constraintlayout/widget/e;->M:I

    .line 584
    .line 585
    iget v3, v2, Landroidx/constraintlayout/widget/e;->O:I

    .line 586
    .line 587
    iget v4, v2, Landroidx/constraintlayout/widget/e;->Q:I

    .line 588
    .line 589
    iget v2, v2, Landroidx/constraintlayout/widget/e;->S:F

    .line 590
    .line 591
    invoke-virtual {v0, v1, v3, v4, v2}, Lu/e;->setVerticalMatchStyle(IIIF)V

    .line 592
    .line 593
    .line 594
    return-void
.end method

.method public final b(Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lu/e;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/e;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/e;->c0:Z

    .line 29
    .line 30
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 31
    .line 32
    if-ne p5, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/e;

    .line 39
    .line 40
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/e;->c0:Z

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 43
    .line 44
    invoke-virtual {v0, p4}, Lu/e;->setHasBaseline(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p3, p5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iget p5, p2, Landroidx/constraintlayout/widget/e;->D:I

    .line 56
    .line 57
    iget p2, p2, Landroidx/constraintlayout/widget/e;->C:I

    .line 58
    .line 59
    invoke-virtual {v0, p3, p5, p2, p4}, Lu/d;->connect(Lu/d;IIZ)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p4}, Lu/e;->setHasBaseline(Z)V

    .line 63
    .line 64
    .line 65
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lu/d;->reset()V

    .line 72
    .line 73
    .line 74
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lu/d;->reset()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/e;

    .line 2
    .line 3
    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    move v4, v1

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/constraintlayout/widget/c;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/c;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move v5, v1

    .line 53
    :goto_1
    if-ge v5, v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v1

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float/2addr v7, v2

    .line 123
    float-to-int v7, v7

    .line 124
    int-to-float v8, v8

    .line 125
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 126
    .line 127
    div-float/2addr v8, v11

    .line 128
    mul-float/2addr v8, v3

    .line 129
    float-to-int v8, v8

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v9, v10

    .line 132
    mul-float/2addr v9, v2

    .line 133
    float-to-int v9, v9

    .line 134
    int-to-float v6, v6

    .line 135
    div-float/2addr v6, v11

    .line 136
    mul-float/2addr v6, v3

    .line 137
    float-to-int v6, v6

    .line 138
    new-instance v15, Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .line 142
    .line 143
    const/high16 v10, -0x10000

    .line 144
    .line 145
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    int-to-float v11, v7

    .line 149
    int-to-float v12, v8

    .line 150
    add-int/2addr v7, v9

    .line 151
    int-to-float v13, v7

    .line 152
    move v14, v12

    .line 153
    move-object/from16 v10, p1

    .line 154
    .line 155
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    move v7, v11

    .line 159
    add-int/2addr v8, v6

    .line 160
    int-to-float v14, v8

    .line 161
    move v11, v13

    .line 162
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    move v6, v12

    .line 166
    move v12, v14

    .line 167
    move v13, v7

    .line 168
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    move v7, v11

    .line 172
    move v11, v13

    .line 173
    move v14, v6

    .line 174
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    move/from16 v16, v14

    .line 178
    .line 179
    move v14, v12

    .line 180
    move/from16 v12, v16

    .line 181
    .line 182
    const v6, -0xff0100

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    move v13, v7

    .line 189
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    move/from16 v16, v14

    .line 193
    .line 194
    move v14, v12

    .line 195
    move/from16 v12, v16

    .line 196
    .line 197
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/e;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/constraintlayout/widget/e;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/e;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/e;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/f;->getOptimizationLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 7
    .line 8
    iget-object v2, v1, Lu/e;->j:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v1, Lu/e;->j:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "parent"

    .line 35
    .line 36
    iput-object v2, v1, Lu/e;->j:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v4, " setDebugName "

    .line 43
    .line 44
    const-string v5, "ConstraintLayout"

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget-object v2, v1, Lu/e;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lu/e;->setDebugName(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v1}, Lu/n;->getChildren()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lu/e;

    .line 91
    .line 92
    invoke-virtual {v6}, Lu/e;->getCompanionWidget()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Landroid/view/View;

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    iget-object v8, v6, Lu/e;->j:Ljava/lang/String;

    .line 101
    .line 102
    if-nez v8, :cond_4

    .line 103
    .line 104
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eq v7, v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    iput-object v7, v6, Lu/e;->j:Ljava/lang/String;

    .line 123
    .line 124
    :cond_4
    invoke-virtual {v6}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-nez v7, :cond_3

    .line 129
    .line 130
    iget-object v7, v6, Lu/e;->j:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Lu/e;->setDebugName(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {v1, v0}, Lu/f;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Lu/e;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/widget/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/constraintlayout/widget/e;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Landroidx/constraintlayout/widget/e;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/constraintlayout/widget/e;

    .line 49
    .line 50
    iget-object p1, p1, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public isRtl()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    const/high16 v1, 0x400000

    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v1, v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/e;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/e;->d0:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/e;->e0:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Lu/e;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Lu/e;->getY()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-lez p2, :cond_2

    .line 75
    .line 76
    :goto_2
    if-ge p3, p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Landroidx/constraintlayout/widget/c;

    .line 83
    .line 84
    invoke-virtual {p4, p0}, Landroidx/constraintlayout/widget/c;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .line 1
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:I

    .line 2
    .line 3
    if-ne v1, p1, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:I

    .line 37
    .line 38
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 45
    .line 46
    invoke-virtual {v7, v1}, Lu/f;->setRtl(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 50
    .line 51
    if-eqz v1, :cond_14

    .line 52
    .line 53
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    move v4, v3

    .line 60
    :goto_2
    if-ge v4, v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    move v8, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move v8, v3

    .line 78
    :goto_3
    if-eqz v8, :cond_13

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    move v2, v3

    .line 89
    :goto_4
    if-ge v2, v9, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lu/e;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {v4}, Lu/e;->reset()V

    .line 103
    .line 104
    .line 105
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    const/4 v2, -0x1

    .line 109
    if-eqz v1, :cond_c

    .line 110
    .line 111
    move v4, v3

    .line 112
    :goto_6
    if-ge v4, v9, :cond_c

    .line 113
    .line 114
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {p0, v3, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/16 v11, 0x2f

    .line 142
    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eq v11, v2, :cond_7

    .line 148
    .line 149
    add-int/lit8 v11, v11, 0x1

    .line 150
    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    :goto_7
    move-object v5, v7

    .line 162
    goto :goto_8

    .line 163
    :cond_8
    iget-object v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 164
    .line 165
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    check-cast v11, Landroid/view/View;

    .line 170
    .line 171
    if-nez v11, :cond_9

    .line 172
    .line 173
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    if-eqz v11, :cond_9

    .line 178
    .line 179
    if-eq v11, p0, :cond_9

    .line 180
    .line 181
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    if-ne v5, p0, :cond_9

    .line 186
    .line 187
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    if-ne v11, p0, :cond_a

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    if-nez v11, :cond_b

    .line 194
    .line 195
    const/4 v5, 0x0

    .line 196
    goto :goto_8

    .line 197
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Landroidx/constraintlayout/widget/e;

    .line 202
    .line 203
    iget-object v5, v5, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 204
    .line 205
    :goto_8
    invoke-virtual {v5, v10}, Lu/e;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    :catch_0
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_c
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 212
    .line 213
    if-eq v4, v2, :cond_d

    .line 214
    .line 215
    move v2, v3

    .line 216
    :goto_9
    if-ge v2, v9, :cond_d

    .line 217
    .line 218
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 223
    .line 224
    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_d
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 229
    .line 230
    if-eqz v2, :cond_e

    .line 231
    .line 232
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/l;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 233
    .line 234
    .line 235
    :cond_e
    invoke-virtual {v7}, Lu/n;->removeAllChildren()V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-lez v4, :cond_f

    .line 245
    .line 246
    move v5, v3

    .line 247
    :goto_a
    if-ge v5, v4, :cond_f

    .line 248
    .line 249
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, Landroidx/constraintlayout/widget/c;

    .line 254
    .line 255
    invoke-virtual {v10, p0}, Landroidx/constraintlayout/widget/c;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 256
    .line 257
    .line 258
    add-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_f
    move v2, v3

    .line 262
    :goto_b
    if-ge v2, v9, :cond_10

    .line 263
    .line 264
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    add-int/lit8 v2, v2, 0x1

    .line 268
    .line 269
    goto :goto_b

    .line 270
    :cond_10
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroid/util/SparseArray;

    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    move v2, v3

    .line 286
    :goto_c
    if-ge v2, v9, :cond_11

    .line 287
    .line 288
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lu/e;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-virtual {v5, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    add-int/lit8 v2, v2, 0x1

    .line 304
    .line 305
    goto :goto_c

    .line 306
    :cond_11
    move v10, v3

    .line 307
    :goto_d
    if-ge v10, v9, :cond_13

    .line 308
    .line 309
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lu/e;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    if-nez v3, :cond_12

    .line 318
    .line 319
    goto :goto_e

    .line 320
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, Landroidx/constraintlayout/widget/e;

    .line 325
    .line 326
    invoke-virtual {v7, v3}, Lu/n;->add(Lu/e;)V

    .line 327
    .line 328
    .line 329
    move-object v0, p0

    .line 330
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Lu/e;Landroidx/constraintlayout/widget/e;Landroid/util/SparseArray;)V

    .line 331
    .line 332
    .line 333
    :goto_e
    add-int/lit8 v10, v10, 0x1

    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_13
    if-eqz v8, :cond_14

    .line 337
    .line 338
    invoke-virtual {v7}, Lu/f;->updateHierarchy()V

    .line 339
    .line 340
    .line 341
    :cond_14
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 342
    .line 343
    invoke-virtual {p0, v7, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Lu/f;III)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7}, Lu/e;->getWidth()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-virtual {v7}, Lu/e;->getHeight()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    invoke-virtual {v7}, Lu/f;->isWidthMeasuredTooSmall()Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    invoke-virtual {v7}, Lu/f;->isHeightMeasuredTooSmall()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    move-object v0, p0

    .line 363
    move v2, p2

    .line 364
    move v6, v1

    .line 365
    move v1, p1

    .line 366
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lu/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Lu/i;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/e;

    .line 22
    .line 23
    new-instance v1, Lu/i;

    .line 24
    .line 25
    invoke-direct {v1}, Lu/i;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/e;->p0:Lu/e;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/e;->d0:Z

    .line 31
    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/e;->V:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lu/i;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/c;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/c;->validateParams()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/e;

    .line 52
    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/e;->e0:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lu/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lu/n;->remove(Lu/e;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 29
    .line 30
    return-void
.end method

.method public parseLayoutDescription(I)V
    .locals 9

    .line 1
    new-instance v0, Lx/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lx/b;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lx/b;->b:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    const/4 v4, 0x1

    .line 38
    if-eq v2, v4, :cond_7

    .line 39
    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    if-eq v2, v5, :cond_0

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x4

    .line 56
    const/4 v8, 0x3

    .line 57
    sparse-switch v6, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_0
    const-string v4, "Variant"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    move v4, v8

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_4

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_5

    .line 75
    :sswitch_1
    const-string v4, "layoutDescription"

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    goto :goto_2

    .line 85
    :sswitch_2
    const-string v6, "StateSet"

    .line 86
    .line 87
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :sswitch_3
    const-string v4, "State"

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    move v4, v5

    .line 103
    goto :goto_2

    .line 104
    :sswitch_4
    const-string v4, "ConstraintSet"

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    move v4, v7

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    :goto_1
    const/4 v4, -0x1

    .line 115
    :goto_2
    if-eq v4, v5, :cond_4

    .line 116
    .line 117
    if-eq v4, v8, :cond_3

    .line 118
    .line 119
    if-eq v4, v7, :cond_2

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    invoke-virtual {v0, v1, p1}, Lx/b;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    new-instance v2, Landroidx/constraintlayout/widget/g;

    .line 127
    .line 128
    invoke-direct {v2, v1, p1}, Landroidx/constraintlayout/widget/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 129
    .line 130
    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    iget-object v4, v3, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    new-instance v3, Landroidx/constraintlayout/widget/f;

    .line 140
    .line 141
    invoke-direct {v3, v1, p1}, Landroidx/constraintlayout/widget/f;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lx/b;->a:Landroid/util/SparseArray;

    .line 145
    .line 146
    iget v4, v3, Landroidx/constraintlayout/widget/f;->a:I

    .line 147
    .line 148
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    .line 157
    .line 158
    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 160
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/b;

    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 2
    .line 3
    iget v1, v0, Lx/a;->e:I

    .line 4
    .line 5
    iget v0, v0, Lx/a;->d:I

    .line 6
    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 24
    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 30
    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 36
    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 41
    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 47
    .line 48
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 49
    .line 50
    return-void
.end method

.method public resolveSystem(Lu/f;III)V
    .locals 13

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    add-int v12, v9, v10

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 41
    .line 42
    move/from16 v7, p3

    .line 43
    .line 44
    move/from16 v8, p4

    .line 45
    .line 46
    invoke-virtual/range {v6 .. v12}, Lx/a;->captureLayoutInfo(IIIIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-gtz v3, :cond_2

    .line 66
    .line 67
    if-lez v6, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    :cond_1
    move v8, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    move v8, v6

    .line 87
    :goto_1
    sub-int v3, v0, v11

    .line 88
    .line 89
    sub-int v5, v1, v12

    .line 90
    .line 91
    move-object v0, p0

    .line 92
    move-object v1, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Lu/f;IIII)V

    .line 94
    .line 95
    .line 96
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 97
    .line 98
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 99
    .line 100
    move-object v0, p1

    .line 101
    move v1, p2

    .line 102
    invoke-virtual/range {v0 .. v9}, Lu/f;->measure(IIIIIIIII)J

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/l;

    .line 2
    .line 3
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    instance-of p1, p3, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 21
    .line 22
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "/"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lx/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx/b;->setOnConstraintsChanged(Lx/e;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lu/f;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu/f;->setOptimizationLevel(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSelfDimensionBehaviour(Lu/f;IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:Lx/a;

    .line 2
    .line 3
    iget v1, v0, Lx/a;->e:I

    .line 4
    .line 5
    iget v0, v0, Lx/a;->d:I

    .line 6
    .line 7
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/high16 v4, 0x40000000    # 2.0f

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eq p2, v5, :cond_4

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    if-eq p2, v4, :cond_0

    .line 25
    .line 26
    move-object p2, v2

    .line 27
    :goto_0
    move p3, v7

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 30
    .line 31
    sub-int/2addr p2, v0

    .line 32
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    move-object p2, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    if-nez v3, :cond_3

    .line 39
    .line 40
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 41
    .line 42
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    :cond_2
    :goto_1
    move-object p2, v6

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move-object p2, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    if-nez v3, :cond_2

    .line 51
    .line 52
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 53
    .line 54
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    if-eq p4, v5, :cond_9

    .line 60
    .line 61
    if-eqz p4, :cond_6

    .line 62
    .line 63
    if-eq p4, v4, :cond_5

    .line 64
    .line 65
    :goto_3
    move p5, v7

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 68
    .line 69
    sub-int/2addr p4, v1

    .line 70
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    if-nez v3, :cond_8

    .line 76
    .line 77
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 78
    .line 79
    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result p5

    .line 83
    :cond_7
    :goto_4
    move-object v2, v6

    .line 84
    goto :goto_5

    .line 85
    :cond_8
    move-object v2, v6

    .line 86
    goto :goto_3

    .line 87
    :cond_9
    if-nez v3, :cond_7

    .line 88
    .line 89
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 90
    .line 91
    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    goto :goto_4

    .line 96
    :goto_5
    invoke-virtual {p1}, Lu/e;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p4

    .line 100
    if-ne p3, p4, :cond_a

    .line 101
    .line 102
    invoke-virtual {p1}, Lu/e;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    if-eq p5, p4, :cond_b

    .line 107
    .line 108
    :cond_a
    invoke-virtual {p1}, Lu/f;->invalidateMeasures()V

    .line 109
    .line 110
    .line 111
    :cond_b
    invoke-virtual {p1, v7}, Lu/e;->setX(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v7}, Lu/e;->setY(I)V

    .line 115
    .line 116
    .line 117
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 118
    .line 119
    sub-int/2addr p4, v0

    .line 120
    invoke-virtual {p1, p4}, Lu/e;->setMaxWidth(I)V

    .line 121
    .line 122
    .line 123
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 124
    .line 125
    sub-int/2addr p4, v1

    .line 126
    invoke-virtual {p1, p4}, Lu/e;->setMaxHeight(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v7}, Lu/e;->setMinWidth(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v7}, Lu/e;->setMinHeight(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Lu/e;->setWidth(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p5}, Lu/e;->setHeight(I)V

    .line 145
    .line 146
    .line 147
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 148
    .line 149
    sub-int/2addr p2, v0

    .line 150
    invoke-virtual {p1, p2}, Lu/e;->setMinWidth(I)V

    .line 151
    .line 152
    .line 153
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 154
    .line 155
    sub-int/2addr p2, v1

    .line 156
    invoke-virtual {p1, p2}, Lu/e;->setMinHeight(I)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
