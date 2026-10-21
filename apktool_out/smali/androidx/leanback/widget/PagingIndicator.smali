.class public Landroidx/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final F:Landroid/view/animation/DecelerateInterpolator;

.field public static final G:Landroidx/leanback/widget/v0;

.field public static final H:Landroidx/leanback/widget/w0;

.field public static final I:Landroidx/leanback/widget/x0;


# instance fields
.field public final A:Landroid/graphics/Paint;

.field public B:Landroid/graphics/Bitmap;

.field public C:Landroid/graphics/Paint;

.field public final D:Landroid/graphics/Rect;

.field public final E:F

.field public b:Z

.field public final e:I

.field public final f:I

.field public final j:I

.field public final m:I

.field public final n:I

.field public final p:I

.field public final q:I

.field public r:[Landroidx/leanback/widget/y0;

.field public s:[I

.field public t:[I

.field public u:[I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public final z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroidx/leanback/widget/v0;

    .line 9
    .line 10
    const-string v1, "alpha"

    .line 11
    .line 12
    const-class v2, Ljava/lang/Float;

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->G:Landroidx/leanback/widget/v0;

    .line 18
    .line 19
    new-instance v0, Landroidx/leanback/widget/w0;

    .line 20
    .line 21
    const-string v1, "diameter"

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->H:Landroidx/leanback/widget/w0;

    .line 27
    .line 28
    new-instance v0, Landroidx/leanback/widget/x0;

    .line 29
    .line 30
    const-string v1, "translation_x"

    .line 31
    .line 32
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->I:Landroidx/leanback/widget/x0;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 5
    sget-object v0, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-virtual {v1, v3, v0, v5, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 6
    sget-object v2, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, LM/p0;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 7
    sget v1, Landroidx/leanback/R$styleable;->PagingIndicator_lbDotRadius:I

    sget v2, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 9
    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 10
    iput v1, v0, Landroidx/leanback/widget/PagingIndicator;->f:I

    mul-int/2addr v1, v9

    .line 11
    iput v1, v0, Landroidx/leanback/widget/PagingIndicator;->e:I

    .line 12
    sget v2, Landroidx/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v3, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 14
    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 15
    iput v2, v0, Landroidx/leanback/widget/PagingIndicator;->n:I

    mul-int/2addr v2, v9

    .line 16
    iput v2, v0, Landroidx/leanback/widget/PagingIndicator;->m:I

    .line 17
    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    sget v5, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 19
    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 20
    iput v3, v0, Landroidx/leanback/widget/PagingIndicator;->j:I

    .line 21
    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v5, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 23
    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 24
    iput v3, v0, Landroidx/leanback/widget/PagingIndicator;->p:I

    .line 25
    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    sget v5, Landroidx/leanback/R$color;->lb_page_indicator_dot:I

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 27
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Landroidx/leanback/widget/PagingIndicator;->z:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    sget v5, Landroidx/leanback/R$color;->lb_page_indicator_arrow_background:I

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 31
    iput v3, v0, Landroidx/leanback/widget/PagingIndicator;->y:I

    .line 32
    iget-object v3, v0, Landroidx/leanback/widget/PagingIndicator;->C:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    sget v3, Landroidx/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {v4, v3, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 34
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v12

    :goto_0
    iput-boolean v3, v0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 36
    sget v3, Landroidx/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 37
    sget v4, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroidx/leanback/widget/PagingIndicator;->q:I

    .line 38
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Landroidx/leanback/widget/PagingIndicator;->A:Landroid/graphics/Paint;

    .line 39
    sget v6, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v4

    int-to-float v6, v6

    .line 40
    invoke-virtual {v5, v4, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 41
    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    .line 42
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v12, v12, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Landroidx/leanback/widget/PagingIndicator;->D:Landroid/graphics/Rect;

    .line 43
    iget-object v3, v0, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, v0, Landroidx/leanback/widget/PagingIndicator;->E:F

    .line 44
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 45
    new-array v4, v9, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroidx/leanback/widget/PagingIndicator;->G:Landroidx/leanback/widget/v0;

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v13, 0xa7

    .line 46
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    sget-object v11, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v1, v1

    .line 48
    new-array v15, v9, [F

    aput v1, v15, v12

    aput v2, v15, v8

    move/from16 v16, v12

    sget-object v12, Landroidx/leanback/widget/PagingIndicator;->H:Landroidx/leanback/widget/w0;

    invoke-static {v5, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v13, 0x1a1

    .line 49
    invoke-virtual {v15, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    invoke-virtual {v15, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->c()Landroid/animation/ObjectAnimator;

    move-result-object v17

    move/from16 v18, v8

    new-array v8, v7, [Landroid/animation/Animator;

    aput-object v4, v8, v16

    aput-object v15, v8, v18

    aput-object v17, v8, v9

    .line 52
    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 53
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 54
    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0xa7

    .line 55
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    invoke-virtual {v6, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    new-array v7, v9, [F

    aput v2, v7, v16

    aput v1, v7, v18

    invoke-static {v5, v12, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    invoke-virtual {v1, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->c()Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v15, 0x3

    new-array v7, v15, [Landroid/animation/Animator;

    aput-object v6, v7, v16

    aput-object v1, v7, v18

    aput-object v2, v7, v9

    .line 61
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 62
    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v3, v1, v16

    aput-object v4, v1, v18

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v1, v18

    .line 63
    invoke-virtual {v0, v1, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->m:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->q:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    return v1
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->f:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->p:I

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x3

    .line 13
    .line 14
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->j:I

    .line 15
    .line 16
    mul-int/2addr v0, v2

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private setSelectedPage(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->x:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->x:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:I

    .line 3
    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/leanback/widget/y0;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_1
    iput v2, v1, Landroidx/leanback/widget/y0;->h:F

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->t:[I

    .line 28
    .line 29
    aget v2, v2, v0

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    iput v2, v1, Landroidx/leanback/widget/y0;->d:F

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 38
    .line 39
    aget-object v0, v0, v1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, v0, Landroidx/leanback/widget/y0;->c:F

    .line 43
    .line 44
    iput v1, v0, Landroidx/leanback/widget/y0;->d:F

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/leanback/widget/y0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 47
    .line 48
    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->m:I

    .line 49
    .line 50
    int-to-float v4, v4

    .line 51
    iput v4, v0, Landroidx/leanback/widget/y0;->e:F

    .line 52
    .line 53
    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->n:I

    .line 54
    .line 55
    int-to-float v4, v4

    .line 56
    iput v4, v0, Landroidx/leanback/widget/y0;->f:F

    .line 57
    .line 58
    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->E:F

    .line 59
    .line 60
    mul-float/2addr v4, v1

    .line 61
    iput v4, v0, Landroidx/leanback/widget/y0;->g:F

    .line 62
    .line 63
    iput v3, v0, Landroidx/leanback/widget/y0;->a:F

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/leanback/widget/y0;->adjustAlpha()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 69
    .line 70
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:I

    .line 71
    .line 72
    aget-object v0, v0, v1

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v2, v3

    .line 78
    :goto_2
    iput v2, v0, Landroidx/leanback/widget/y0;->h:F

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->s:[I

    .line 81
    .line 82
    aget v2, v2, v1

    .line 83
    .line 84
    int-to-float v2, v2

    .line 85
    iput v2, v0, Landroidx/leanback/widget/y0;->d:F

    .line 86
    .line 87
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 90
    .line 91
    if-ge v1, v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 94
    .line 95
    aget-object v0, v0, v1

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/leanback/widget/y0;->a()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 101
    .line 102
    aget-object v0, v0, v1

    .line 103
    .line 104
    iput v3, v0, Landroidx/leanback/widget/y0;->h:F

    .line 105
    .line 106
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->u:[I

    .line 107
    .line 108
    aget v2, v2, v1

    .line 109
    .line 110
    int-to-float v2, v2

    .line 111
    iput v2, v0, Landroidx/leanback/widget/y0;->d:F

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v0, v2

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 26
    .line 27
    new-array v4, v2, [I

    .line 28
    .line 29
    iput-object v4, p0, Landroidx/leanback/widget/PagingIndicator;->s:[I

    .line 30
    .line 31
    new-array v5, v2, [I

    .line 32
    .line 33
    iput-object v5, p0, Landroidx/leanback/widget/PagingIndicator;->t:[I

    .line 34
    .line 35
    new-array v2, v2, [I

    .line 36
    .line 37
    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->u:[I

    .line 38
    .line 39
    iget-boolean v6, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 40
    .line 41
    iget v7, p0, Landroidx/leanback/widget/PagingIndicator;->f:I

    .line 42
    .line 43
    iget v8, p0, Landroidx/leanback/widget/PagingIndicator;->p:I

    .line 44
    .line 45
    iget v9, p0, Landroidx/leanback/widget/PagingIndicator;->j:I

    .line 46
    .line 47
    const/4 v10, 0x1

    .line 48
    const/4 v11, 0x0

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 52
    .line 53
    sub-int/2addr v0, v3

    .line 54
    add-int v3, v0, v7

    .line 55
    .line 56
    sub-int/2addr v3, v9

    .line 57
    add-int/2addr v3, v8

    .line 58
    aput v3, v4, v11

    .line 59
    .line 60
    add-int v3, v0, v7

    .line 61
    .line 62
    aput v3, v5, v11

    .line 63
    .line 64
    add-int/2addr v0, v7

    .line 65
    mul-int/lit8 v3, v9, 0x2

    .line 66
    .line 67
    sub-int/2addr v0, v3

    .line 68
    mul-int/lit8 v3, v8, 0x2

    .line 69
    .line 70
    add-int/2addr v3, v0

    .line 71
    aput v3, v2, v11

    .line 72
    .line 73
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 74
    .line 75
    if-ge v10, v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->s:[I

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->t:[I

    .line 80
    .line 81
    add-int/lit8 v3, v10, -0x1

    .line 82
    .line 83
    aget v4, v2, v3

    .line 84
    .line 85
    add-int/2addr v4, v8

    .line 86
    aput v4, v0, v10

    .line 87
    .line 88
    aget v4, v2, v3

    .line 89
    .line 90
    add-int/2addr v4, v9

    .line 91
    aput v4, v2, v10

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->u:[I

    .line 94
    .line 95
    aget v0, v0, v3

    .line 96
    .line 97
    add-int/2addr v0, v8

    .line 98
    aput v0, v2, v10

    .line 99
    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    div-int/lit8 v3, v3, 0x2

    .line 104
    .line 105
    add-int/2addr v3, v0

    .line 106
    sub-int v0, v3, v7

    .line 107
    .line 108
    add-int/2addr v0, v9

    .line 109
    sub-int/2addr v0, v8

    .line 110
    aput v0, v4, v11

    .line 111
    .line 112
    sub-int v0, v3, v7

    .line 113
    .line 114
    aput v0, v5, v11

    .line 115
    .line 116
    sub-int/2addr v3, v7

    .line 117
    mul-int/lit8 v0, v9, 0x2

    .line 118
    .line 119
    add-int/2addr v0, v3

    .line 120
    mul-int/lit8 v3, v8, 0x2

    .line 121
    .line 122
    sub-int/2addr v0, v3

    .line 123
    aput v0, v2, v11

    .line 124
    .line 125
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 126
    .line 127
    if-ge v10, v0, :cond_1

    .line 128
    .line 129
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->s:[I

    .line 130
    .line 131
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->t:[I

    .line 132
    .line 133
    add-int/lit8 v3, v10, -0x1

    .line 134
    .line 135
    aget v4, v2, v3

    .line 136
    .line 137
    sub-int/2addr v4, v8

    .line 138
    aput v4, v0, v10

    .line 139
    .line 140
    aget v4, v2, v3

    .line 141
    .line 142
    sub-int/2addr v4, v9

    .line 143
    aput v4, v2, v10

    .line 144
    .line 145
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->u:[I

    .line 146
    .line 147
    aget v0, v0, v3

    .line 148
    .line 149
    sub-int/2addr v0, v8

    .line 150
    aput v0, v2, v10

    .line 151
    .line 152
    add-int/lit8 v10, v10, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->n:I

    .line 156
    .line 157
    add-int/2addr v1, v0

    .line 158
    iput v1, p0, Landroidx/leanback/widget/PagingIndicator;->v:I

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->a()V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final c()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->p:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->j:I

    .line 5
    .line 6
    add-int/2addr v0, v1

    .line 7
    int-to-float v0, v0

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput v0, v1, v2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    aput v0, v1, v2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sget-object v2, Landroidx/leanback/widget/PagingIndicator;->I:Landroidx/leanback/widget/x0;

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x1a1

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    sget-object v1, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/view/animation/DecelerateInterpolator;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroidx/leanback/R$drawable;->lb_ic_nav_arrow:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v0, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .line 20
    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public getDotSelectedLeftX()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->t:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getDotSelectedRightX()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->u:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getDotSelectedX()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->s:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget v2, v1, Landroidx/leanback/widget/y0;->d:F

    .line 11
    .line 12
    iget v3, v1, Landroidx/leanback/widget/y0;->c:F

    .line 13
    .line 14
    add-float/2addr v2, v3

    .line 15
    iget-object v3, v1, Landroidx/leanback/widget/y0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 16
    .line 17
    iget v4, v3, Landroidx/leanback/widget/PagingIndicator;->v:I

    .line 18
    .line 19
    int-to-float v4, v4

    .line 20
    iget v5, v1, Landroidx/leanback/widget/y0;->f:F

    .line 21
    .line 22
    iget-object v6, v3, Landroidx/leanback/widget/PagingIndicator;->z:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    iget v4, v1, Landroidx/leanback/widget/y0;->a:F

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    cmpl-float v4, v4, v5

    .line 31
    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    iget-object v4, v3, Landroidx/leanback/widget/PagingIndicator;->A:Landroid/graphics/Paint;

    .line 35
    .line 36
    iget v5, v1, Landroidx/leanback/widget/y0;->b:I

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget v5, v3, Landroidx/leanback/widget/PagingIndicator;->v:I

    .line 42
    .line 43
    int-to-float v5, v5

    .line 44
    iget v6, v1, Landroidx/leanback/widget/y0;->f:F

    .line 45
    .line 46
    invoke-virtual {p1, v2, v5, v6, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, v3, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    new-instance v5, Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v1, v1, Landroidx/leanback/widget/y0;->g:F

    .line 54
    .line 55
    sub-float v6, v2, v1

    .line 56
    .line 57
    float-to-int v6, v6

    .line 58
    iget v7, v3, Landroidx/leanback/widget/PagingIndicator;->v:I

    .line 59
    .line 60
    int-to-float v7, v7

    .line 61
    sub-float v8, v7, v1

    .line 62
    .line 63
    float-to-int v8, v8

    .line 64
    add-float/2addr v2, v1

    .line 65
    float-to-int v2, v2

    .line 66
    add-float/2addr v7, v1

    .line 67
    float-to-int v1, v7

    .line 68
    invoke-direct {v5, v6, v8, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v3, Landroidx/leanback/widget/PagingIndicator;->C:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget-object v2, v3, Landroidx/leanback/widget/PagingIndicator;->D:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {p1, v4, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/high16 v3, -0x80000000

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredWidth()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eq v1, v3, :cond_3

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-boolean v1, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 11
    .line 12
    if-eq v1, p1, :cond_3

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->d()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->B:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    array-length v1, p1

    .line 27
    :goto_1
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    aget-object v2, p1, v0

    .line 30
    .line 31
    iget-object v3, v2, Landroidx/leanback/widget/y0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 32
    .line 33
    iget-boolean v3, v3, Landroidx/leanback/widget/PagingIndicator;->b:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    .line 41
    .line 42
    :goto_2
    iput v3, v2, Landroidx/leanback/widget/y0;->i:F

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public setArrowColor(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->z:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPageCount(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 4
    .line 5
    new-array p1, p1, [Landroidx/leanback/widget/y0;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    move v0, p1

    .line 11
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->r:[Landroidx/leanback/widget/y0;

    .line 16
    .line 17
    new-instance v2, Landroidx/leanback/widget/y0;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Landroidx/leanback/widget/y0;-><init>(Landroidx/leanback/widget/PagingIndicator;)V

    .line 20
    .line 21
    .line 22
    aput-object v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "The page count should be a positive integer"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
