.class public final Lr4/p;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:Lq4/b;

.field public g:Lq4/b;

.field public h:[Lq4/b;

.field public final i:I

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lr4/p;->i:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lr4/p;->k:F

    .line 5
    .line 6
    iget-object v1, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 7
    .line 8
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 11
    .line 12
    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lr4/p;->j:F

    .line 16
    .line 17
    iget-object v1, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 20
    .line 21
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lr4/p;->f:Lq4/b;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lr4/p;->g:Lq4/b;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget v1, p0, Lr4/p;->i:I

    .line 38
    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    .line 43
    .line 44
    mul-int/lit8 v1, v0, 0x78

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 48
    .line 49
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 52
    .line 53
    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lr4/p;->h:[Lq4/b;

    .line 57
    .line 58
    aget-object v1, v1, v0

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public initializeObjects()V
    .locals 7

    .line 1
    iget v0, p0, Lr4/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lr4/g;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 14
    .line 15
    div-float v1, v0, v1

    .line 16
    .line 17
    iput v1, p0, Lr4/p;->l:F

    .line 18
    .line 19
    new-instance v1, Lq4/b;

    .line 20
    .line 21
    invoke-direct {v1}, Lq4/b;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lr4/p;->f:Lq4/b;

    .line 25
    .line 26
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 27
    .line 28
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 29
    .line 30
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lq4/b;->setCenter(FF)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lr4/p;->f:Lq4/b;

    .line 36
    .line 37
    iget v2, p0, Lr4/g;->a:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lq4/c;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lr4/p;->f:Lq4/b;

    .line 43
    .line 44
    const/high16 v2, 0x40800000    # 4.0f

    .line 45
    .line 46
    div-float v2, v0, v2

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lq4/b;->setRadius(F)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lq4/b;

    .line 52
    .line 53
    invoke-direct {v1}, Lq4/b;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lr4/p;->g:Lq4/b;

    .line 57
    .line 58
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 59
    .line 60
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 61
    .line 62
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Lq4/b;->setCenter(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lr4/p;->g:Lq4/b;

    .line 68
    .line 69
    iget v2, p0, Lr4/g;->a:I

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lq4/c;->setColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lr4/p;->g:Lq4/b;

    .line 75
    .line 76
    iget v2, p0, Lr4/p;->l:F

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lq4/b;->setRadius(F)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lr4/p;->g:Lq4/b;

    .line 82
    .line 83
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lq4/c;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lr4/p;->g:Lq4/b;

    .line 89
    .line 90
    const/high16 v2, 0x41a00000    # 20.0f

    .line 91
    .line 92
    div-float v2, v0, v2

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lq4/c;->setWidth(F)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lr4/p;->i:I

    .line 98
    .line 99
    new-array v2, v1, [Lq4/b;

    .line 100
    .line 101
    iput-object v2, p0, Lr4/p;->h:[Lq4/b;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    .line 106
    iget-object v3, p0, Lr4/p;->h:[Lq4/b;

    .line 107
    .line 108
    new-instance v4, Lq4/b;

    .line 109
    .line 110
    invoke-direct {v4}, Lq4/b;-><init>()V

    .line 111
    .line 112
    .line 113
    aput-object v4, v3, v2

    .line 114
    .line 115
    iget-object v3, p0, Lr4/p;->h:[Lq4/b;

    .line 116
    .line 117
    aget-object v3, v3, v2

    .line 118
    .line 119
    iget-object v4, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 120
    .line 121
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 122
    .line 123
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 124
    .line 125
    iget v6, p0, Lr4/p;->l:F

    .line 126
    .line 127
    sub-float/2addr v4, v6

    .line 128
    invoke-virtual {v3, v5, v4}, Lq4/b;->setCenter(FF)V

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lr4/p;->h:[Lq4/b;

    .line 132
    .line 133
    aget-object v3, v3, v2

    .line 134
    .line 135
    iget v4, p0, Lr4/g;->a:I

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Lq4/c;->setColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lr4/p;->h:[Lq4/b;

    .line 141
    .line 142
    aget-object v3, v3, v2

    .line 143
    .line 144
    const/high16 v4, 0x40c00000    # 6.0f

    .line 145
    .line 146
    div-float v4, v0, v4

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Lq4/b;->setRadius(F)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x5dc

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lr4/n;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lr4/n;-><init>(Lr4/p;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    new-array v2, v2, [F

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lr4/o;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lr4/o;-><init>(Lr4/p;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
