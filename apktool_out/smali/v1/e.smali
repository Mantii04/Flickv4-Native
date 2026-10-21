.class public final Lv1/e;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final p:Landroid/view/animation/LinearInterpolator;

.field public static final q:Lh0/b;

.field public static final r:[I


# instance fields
.field public final b:Lv1/d;

.field public e:F

.field public final f:Landroid/content/res/Resources;

.field public final j:Landroid/animation/ValueAnimator;

.field public m:F

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv1/e;->p:Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    new-instance v0, Lh0/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lh0/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv1/e;->q:Lh0/b;

    .line 14
    .line 15
    const/high16 v0, -0x1000000

    .line 16
    .line 17
    filled-new-array {v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lv1/e;->r:[I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lv1/e;->f:Landroid/content/res/Resources;

    .line 15
    .line 16
    new-instance p1, Lv1/d;

    .line 17
    .line 18
    invoke-direct {p1}, Lv1/d;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lv1/e;->b:Lv1/d;

    .line 22
    .line 23
    sget-object v0, Lv1/e;->r:[I

    .line 24
    .line 25
    iput-object v0, p1, Lv1/d;->i:[I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lv1/d;->a(I)V

    .line 29
    .line 30
    .line 31
    const/high16 v0, 0x40200000    # 2.5f

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lv1/e;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [F

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lv1/b;

    .line 47
    .line 48
    invoke-direct {v1, p0, p1}, Lv1/b;-><init>(Lv1/e;Lv1/d;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lv1/e;->p:Landroid/view/animation/LinearInterpolator;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lv1/c;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lv1/c;-><init>(Lv1/e;Lv1/d;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static c(FLv1/d;)V
    .locals 8

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    .line 3
    cmpl-float v1, p0, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    sub-float/2addr p0, v0

    .line 8
    const/high16 v0, 0x3e800000    # 0.25f

    .line 9
    .line 10
    div-float/2addr p0, v0

    .line 11
    iget-object v0, p1, Lv1/d;->i:[I

    .line 12
    .line 13
    iget v1, p1, Lv1/d;->j:I

    .line 14
    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    array-length v3, v0

    .line 20
    rem-int/2addr v1, v3

    .line 21
    aget v0, v0, v1

    .line 22
    .line 23
    shr-int/lit8 v1, v2, 0x18

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    shr-int/lit8 v3, v2, 0x10

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    shr-int/lit8 v4, v2, 0x8

    .line 32
    .line 33
    and-int/lit16 v4, v4, 0xff

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    .line 37
    shr-int/lit8 v5, v0, 0x18

    .line 38
    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 40
    .line 41
    shr-int/lit8 v6, v0, 0x10

    .line 42
    .line 43
    and-int/lit16 v6, v6, 0xff

    .line 44
    .line 45
    shr-int/lit8 v7, v0, 0x8

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0xff

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xff

    .line 50
    .line 51
    sub-int/2addr v5, v1

    .line 52
    int-to-float v5, v5

    .line 53
    mul-float/2addr v5, p0

    .line 54
    float-to-int v5, v5

    .line 55
    add-int/2addr v1, v5

    .line 56
    shl-int/lit8 v1, v1, 0x18

    .line 57
    .line 58
    sub-int/2addr v6, v3

    .line 59
    int-to-float v5, v6

    .line 60
    mul-float/2addr v5, p0

    .line 61
    float-to-int v5, v5

    .line 62
    add-int/2addr v3, v5

    .line 63
    shl-int/lit8 v3, v3, 0x10

    .line 64
    .line 65
    or-int/2addr v1, v3

    .line 66
    sub-int/2addr v7, v4

    .line 67
    int-to-float v3, v7

    .line 68
    mul-float/2addr v3, p0

    .line 69
    float-to-int v3, v3

    .line 70
    add-int/2addr v4, v3

    .line 71
    shl-int/lit8 v3, v4, 0x8

    .line 72
    .line 73
    or-int/2addr v1, v3

    .line 74
    sub-int/2addr v0, v2

    .line 75
    int-to-float v0, v0

    .line 76
    mul-float/2addr p0, v0

    .line 77
    float-to-int p0, p0

    .line 78
    add-int/2addr v2, p0

    .line 79
    or-int p0, v1, v2

    .line 80
    .line 81
    iput p0, p1, Lv1/d;->u:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    iget-object p0, p1, Lv1/d;->i:[I

    .line 85
    .line 86
    iget v0, p1, Lv1/d;->j:I

    .line 87
    .line 88
    aget p0, p0, v0

    .line 89
    .line 90
    iput p0, p1, Lv1/d;->u:I

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final a(FLv1/d;Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lv1/e;->n:Z

    .line 2
    .line 3
    const v1, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lv1/e;->c(FLv1/d;)V

    .line 9
    .line 10
    .line 11
    iget p3, p2, Lv1/d;->m:F

    .line 12
    .line 13
    const v0, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    div-float/2addr p3, v0

    .line 17
    float-to-double v2, p3

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    add-double/2addr v2, v4

    .line 25
    double-to-float p3, v2

    .line 26
    iget v0, p2, Lv1/d;->k:F

    .line 27
    .line 28
    iget v2, p2, Lv1/d;->l:F

    .line 29
    .line 30
    sub-float v1, v2, v1

    .line 31
    .line 32
    sub-float/2addr v1, v0

    .line 33
    mul-float/2addr v1, p1

    .line 34
    add-float/2addr v1, v0

    .line 35
    iput v1, p2, Lv1/d;->e:F

    .line 36
    .line 37
    iput v2, p2, Lv1/d;->f:F

    .line 38
    .line 39
    iget v0, p2, Lv1/d;->m:F

    .line 40
    .line 41
    invoke-static {p3, v0, p1, v0}, Lb/c;->a(FFFF)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p2, Lv1/d;->g:F

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpl-float v2, p1, v0

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    :goto_0
    iget p3, p2, Lv1/d;->m:F

    .line 59
    .line 60
    const/high16 v2, 0x3f000000    # 0.5f

    .line 61
    .line 62
    cmpg-float v3, p1, v2

    .line 63
    .line 64
    sget-object v4, Lv1/e;->q:Lh0/b;

    .line 65
    .line 66
    const v5, 0x3f4a3d71    # 0.79f

    .line 67
    .line 68
    .line 69
    if-gez v3, :cond_3

    .line 70
    .line 71
    div-float v0, p1, v2

    .line 72
    .line 73
    iget v2, p2, Lv1/d;->k:F

    .line 74
    .line 75
    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    mul-float/2addr v0, v5

    .line 80
    add-float/2addr v0, v1

    .line 81
    add-float/2addr v0, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    sub-float v3, p1, v2

    .line 84
    .line 85
    div-float/2addr v3, v2

    .line 86
    iget v2, p2, Lv1/d;->k:F

    .line 87
    .line 88
    add-float/2addr v2, v5

    .line 89
    invoke-interface {v4, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sub-float/2addr v0, v3

    .line 94
    mul-float/2addr v0, v5

    .line 95
    add-float/2addr v0, v1

    .line 96
    sub-float v0, v2, v0

    .line 97
    .line 98
    move v6, v2

    .line 99
    move v2, v0

    .line 100
    move v0, v6

    .line 101
    :goto_1
    const v1, 0x3e570a3c    # 0.20999998f

    .line 102
    .line 103
    .line 104
    mul-float/2addr v1, p1

    .line 105
    add-float/2addr v1, p3

    .line 106
    iget p3, p0, Lv1/e;->m:F

    .line 107
    .line 108
    add-float/2addr p1, p3

    .line 109
    const/high16 p3, 0x43580000    # 216.0f

    .line 110
    .line 111
    mul-float/2addr p1, p3

    .line 112
    iput v2, p2, Lv1/d;->e:F

    .line 113
    .line 114
    iput v0, p2, Lv1/d;->f:F

    .line 115
    .line 116
    iput v1, p2, Lv1/d;->g:F

    .line 117
    .line 118
    iput p1, p0, Lv1/e;->e:F

    .line 119
    .line 120
    return-void
.end method

.method public final b(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/e;->f:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 8
    .line 9
    mul-float/2addr p2, v0

    .line 10
    iget-object v1, p0, Lv1/e;->b:Lv1/d;

    .line 11
    .line 12
    iput p2, v1, Lv1/d;->h:F

    .line 13
    .line 14
    iget-object v2, v1, Lv1/d;->b:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    .line 18
    .line 19
    mul-float/2addr p1, v0

    .line 20
    iput p1, v1, Lv1/d;->q:F

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v1, p1}, Lv1/d;->a(I)V

    .line 24
    .line 25
    .line 26
    mul-float/2addr p3, v0

    .line 27
    mul-float/2addr p4, v0

    .line 28
    float-to-int p1, p3

    .line 29
    iput p1, v1, Lv1/d;->r:I

    .line 30
    .line 31
    float-to-int p1, p4

    .line 32
    iput p1, v1, Lv1/d;->s:I

    .line 33
    .line 34
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lv1/e;->e:F

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lv1/e;->b:Lv1/d;

    .line 22
    .line 23
    iget-object v3, v1, Lv1/d;->a:Landroid/graphics/RectF;

    .line 24
    .line 25
    iget v2, v1, Lv1/d;->q:F

    .line 26
    .line 27
    iget v4, v1, Lv1/d;->h:F

    .line 28
    .line 29
    const/high16 v8, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v4, v8

    .line 32
    add-float/2addr v4, v2

    .line 33
    const/4 v9, 0x0

    .line 34
    cmpg-float v2, v2, v9

    .line 35
    .line 36
    if-gtz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    div-float/2addr v2, v8

    .line 52
    iget v4, v1, Lv1/d;->r:I

    .line 53
    .line 54
    int-to-float v4, v4

    .line 55
    iget v5, v1, Lv1/d;->p:F

    .line 56
    .line 57
    mul-float/2addr v4, v5

    .line 58
    div-float/2addr v4, v8

    .line 59
    iget v5, v1, Lv1/d;->h:F

    .line 60
    .line 61
    div-float/2addr v5, v8

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-float v4, v2, v4

    .line 67
    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-float v2, v2

    .line 73
    sub-float/2addr v2, v4

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    int-to-float v5, v5

    .line 79
    sub-float/2addr v5, v4

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    int-to-float v6, v6

    .line 85
    add-float/2addr v6, v4

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    add-float/2addr v0, v4

    .line 92
    invoke-virtual {v3, v2, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    .line 94
    .line 95
    iget v0, v1, Lv1/d;->e:F

    .line 96
    .line 97
    iget v2, v1, Lv1/d;->g:F

    .line 98
    .line 99
    add-float/2addr v0, v2

    .line 100
    const/high16 v4, 0x43b40000    # 360.0f

    .line 101
    .line 102
    mul-float/2addr v0, v4

    .line 103
    iget v5, v1, Lv1/d;->f:F

    .line 104
    .line 105
    add-float/2addr v5, v2

    .line 106
    mul-float/2addr v5, v4

    .line 107
    sub-float/2addr v5, v0

    .line 108
    iget-object v7, v1, Lv1/d;->b:Landroid/graphics/Paint;

    .line 109
    .line 110
    iget v2, v1, Lv1/d;->u:I

    .line 111
    .line 112
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    iget v2, v1, Lv1/d;->t:I

    .line 116
    .line 117
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    .line 119
    .line 120
    iget v2, v1, Lv1/d;->h:F

    .line 121
    .line 122
    div-float/2addr v2, v8

    .line 123
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    div-float/2addr v10, v8

    .line 139
    iget-object v11, v1, Lv1/d;->d:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1, v4, v6, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    neg-float v2, v2

    .line 145
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 146
    .line 147
    .line 148
    const/4 v6, 0x0

    .line 149
    move-object v2, p1

    .line 150
    move v4, v0

    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    .line 153
    .line 154
    iget-boolean p1, v1, Lv1/d;->n:Z

    .line 155
    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    iget-object p1, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 159
    .line 160
    if-nez p1, :cond_1

    .line 161
    .line 162
    new-instance p1, Landroid/graphics/Path;

    .line 163
    .line 164
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p1, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 168
    .line 169
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 176
    .line 177
    .line 178
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    div-float/2addr p1, v8

    .line 191
    iget v0, v1, Lv1/d;->r:I

    .line 192
    .line 193
    int-to-float v0, v0

    .line 194
    iget v6, v1, Lv1/d;->p:F

    .line 195
    .line 196
    mul-float/2addr v0, v6

    .line 197
    div-float/2addr v0, v8

    .line 198
    iget-object v6, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 199
    .line 200
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    .line 202
    .line 203
    iget-object v6, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 204
    .line 205
    iget v7, v1, Lv1/d;->r:I

    .line 206
    .line 207
    int-to-float v7, v7

    .line 208
    iget v10, v1, Lv1/d;->p:F

    .line 209
    .line 210
    mul-float/2addr v7, v10

    .line 211
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    .line 213
    .line 214
    iget-object v6, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 215
    .line 216
    iget v7, v1, Lv1/d;->r:I

    .line 217
    .line 218
    int-to-float v7, v7

    .line 219
    iget v9, v1, Lv1/d;->p:F

    .line 220
    .line 221
    mul-float/2addr v7, v9

    .line 222
    div-float/2addr v7, v8

    .line 223
    iget v10, v1, Lv1/d;->s:I

    .line 224
    .line 225
    int-to-float v10, v10

    .line 226
    mul-float/2addr v10, v9

    .line 227
    invoke-virtual {v6, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    add-float/2addr v7, p1

    .line 237
    sub-float/2addr v7, v0

    .line 238
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iget v0, v1, Lv1/d;->h:F

    .line 243
    .line 244
    div-float/2addr v0, v8

    .line 245
    add-float/2addr v0, p1

    .line 246
    invoke-virtual {v6, v7, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 247
    .line 248
    .line 249
    iget-object p1, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 252
    .line 253
    .line 254
    iget-object p1, v1, Lv1/d;->c:Landroid/graphics/Paint;

    .line 255
    .line 256
    iget v0, v1, Lv1/d;->u:I

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    .line 260
    .line 261
    iget v0, v1, Lv1/d;->t:I

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 267
    .line 268
    .line 269
    add-float v0, v4, v5

    .line 270
    .line 271
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v1, Lv1/d;->o:Landroid/graphics/Path;

    .line 283
    .line 284
    invoke-virtual {v2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 288
    .line 289
    .line 290
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iget v0, v0, Lv1/d;->t:I

    .line 4
    .line 5
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iput p1, v0, Lv1/d;->t:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lv1/d;->n:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lv1/d;->n:Z

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setArrowScale(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iget v1, v0, Lv1/d;->p:F

    .line 4
    .line 5
    cmpl-float v1, p1, v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lv1/d;->p:F

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iget-object v0, v0, Lv1/d;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iput-object p1, v0, Lv1/d;->i:[I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lv1/d;->a(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lv1/d;->a(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iput p1, v0, Lv1/d;->g:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iput p1, v0, Lv1/d;->e:F

    .line 4
    .line 5
    iput p2, v0, Lv1/d;->f:F

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 2
    .line 3
    iput p1, v0, Lv1/d;->h:F

    .line 4
    .line 5
    iget-object v0, v0, Lv1/d;->b:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x41400000    # 12.0f

    .line 4
    .line 5
    const/high16 v0, 0x40c00000    # 6.0f

    .line 6
    .line 7
    const/high16 v1, 0x41300000    # 11.0f

    .line 8
    .line 9
    const/high16 v2, 0x40400000    # 3.0f

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2, p1, v0}, Lv1/e;->b(FFFF)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    .line 16
    .line 17
    const/high16 v0, 0x40a00000    # 5.0f

    .line 18
    .line 19
    const/high16 v1, 0x40f00000    # 7.5f

    .line 20
    .line 21
    const/high16 v2, 0x40200000    # 2.5f

    .line 22
    .line 23
    invoke-virtual {p0, v1, v2, p1, v0}, Lv1/e;->b(FFFF)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv1/e;->b:Lv1/d;

    .line 7
    .line 8
    iget v1, v0, Lv1/d;->e:F

    .line 9
    .line 10
    iput v1, v0, Lv1/d;->k:F

    .line 11
    .line 12
    iget v2, v0, Lv1/d;->f:F

    .line 13
    .line 14
    iput v2, v0, Lv1/d;->l:F

    .line 15
    .line 16
    iget v3, v0, Lv1/d;->g:F

    .line 17
    .line 18
    iput v3, v0, Lv1/d;->m:F

    .line 19
    .line 20
    cmpl-float v1, v2, v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lv1/e;->n:Z

    .line 26
    .line 27
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    const-wide/16 v1, 0x29a

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lv1/d;->a(I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, v0, Lv1/d;->k:F

    .line 46
    .line 47
    iput v1, v0, Lv1/d;->l:F

    .line 48
    .line 49
    iput v1, v0, Lv1/d;->m:F

    .line 50
    .line 51
    iput v1, v0, Lv1/d;->e:F

    .line 52
    .line 53
    iput v1, v0, Lv1/d;->f:F

    .line 54
    .line 55
    iput v1, v0, Lv1/d;->g:F

    .line 56
    .line 57
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    const-wide/16 v1, 0x534

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/e;->j:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lv1/e;->e:F

    .line 8
    .line 9
    iget-object v1, p0, Lv1/e;->b:Lv1/d;

    .line 10
    .line 11
    iget-boolean v2, v1, Lv1/d;->n:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iput-boolean v3, v1, Lv1/d;->n:Z

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1, v3}, Lv1/d;->a(I)V

    .line 19
    .line 20
    .line 21
    iput v0, v1, Lv1/d;->k:F

    .line 22
    .line 23
    iput v0, v1, Lv1/d;->l:F

    .line 24
    .line 25
    iput v0, v1, Lv1/d;->m:F

    .line 26
    .line 27
    iput v0, v1, Lv1/d;->e:F

    .line 28
    .line 29
    iput v0, v1, Lv1/d;->f:F

    .line 30
    .line 31
    iput v0, v1, Lv1/d;->g:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
