.class public abstract LS/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final z:I


# instance fields
.field public final b:LS/a;

.field public final e:Landroid/view/animation/AccelerateInterpolator;

.field public final f:Landroid/view/View;

.field public j:LS/b;

.field public final m:[F

.field public final n:[F

.field public p:I

.field public q:I

.field public final r:[F

.field public final s:[F

.field public final t:[F

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, LS/c;->z:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, LS/a;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-wide/high16 v2, -0x8000000000000000L

    .line 11
    .line 12
    iput-wide v2, v1, LS/a;->e:J

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    iput-wide v2, v1, LS/a;->i:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iput-wide v2, v1, LS/a;->f:J

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput v2, v1, LS/a;->g:I

    .line 24
    .line 25
    iput v2, v1, LS/a;->h:I

    .line 26
    .line 27
    iput-object v1, p0, LS/c;->b:LS/a;

    .line 28
    .line 29
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, LS/c;->e:Landroid/view/animation/AccelerateInterpolator;

    .line 35
    .line 36
    new-array v1, v0, [F

    .line 37
    .line 38
    fill-array-data v1, :array_0

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, LS/c;->m:[F

    .line 42
    .line 43
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 44
    .line 45
    .line 46
    new-array v2, v0, [F

    .line 47
    .line 48
    fill-array-data v2, :array_1

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, LS/c;->n:[F

    .line 52
    .line 53
    new-array v2, v0, [F

    .line 54
    .line 55
    fill-array-data v2, :array_2

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, LS/c;->r:[F

    .line 59
    .line 60
    new-array v2, v0, [F

    .line 61
    .line 62
    fill-array-data v2, :array_3

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, LS/c;->s:[F

    .line 66
    .line 67
    new-array v0, v0, [F

    .line 68
    .line 69
    fill-array-data v0, :array_4

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, LS/c;->t:[F

    .line 73
    .line 74
    iput-object p1, p0, LS/c;->f:Landroid/view/View;

    .line 75
    .line 76
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .line 86
    const v0, 0x44c4e000    # 1575.0f

    .line 87
    .line 88
    .line 89
    mul-float/2addr v0, p1

    .line 90
    const/high16 v2, 0x3f000000    # 0.5f

    .line 91
    .line 92
    add-float/2addr v0, v2

    .line 93
    float-to-int v0, v0

    .line 94
    const v3, 0x439d8000    # 315.0f

    .line 95
    .line 96
    .line 97
    mul-float/2addr p1, v3

    .line 98
    add-float/2addr p1, v2

    .line 99
    float-to-int p1, p1

    .line 100
    int-to-float v0, v0

    .line 101
    invoke-virtual {p0, v0, v0}, LS/c;->setMaximumVelocity(FF)LS/c;

    .line 102
    .line 103
    .line 104
    int-to-float p1, p1

    .line 105
    invoke-virtual {p0, p1, p1}, LS/c;->setMinimumVelocity(FF)LS/c;

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, LS/c;->setEdgeType(I)LS/c;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1, v1}, LS/c;->setMaximumEdges(FF)LS/c;

    .line 113
    .line 114
    .line 115
    const p1, 0x3e4ccccd    # 0.2f

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, p1}, LS/c;->setRelativeEdges(FF)LS/c;

    .line 119
    .line 120
    .line 121
    const/high16 p1, 0x3f800000    # 1.0f

    .line 122
    .line 123
    invoke-virtual {p0, p1, p1}, LS/c;->setRelativeVelocity(FF)LS/c;

    .line 124
    .line 125
    .line 126
    sget p1, LS/c;->z:I

    .line 127
    .line 128
    invoke-virtual {p0, p1}, LS/c;->setActivationDelay(I)LS/c;

    .line 129
    .line 130
    .line 131
    const/16 p1, 0x1f4

    .line 132
    .line 133
    invoke-virtual {p0, p1}, LS/c;->setRampUpDuration(I)LS/c;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, LS/c;->setRampDownDuration(I)LS/c;

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    cmpg-float p2, p0, p1

    .line 7
    .line 8
    if-gez p2, :cond_1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    return p0
.end method


# virtual methods
.method public final a(FFFI)F
    .locals 3

    .line 1
    iget-object v0, p0, LS/c;->m:[F

    .line 2
    .line 3
    aget v0, v0, p4

    .line 4
    .line 5
    iget-object v1, p0, LS/c;->n:[F

    .line 6
    .line 7
    aget v1, v1, p4

    .line 8
    .line 9
    mul-float/2addr v0, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, LS/c;->b(FFF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, LS/c;->c(FF)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-float/2addr p2, p1

    .line 20
    invoke-virtual {p0, p2, v0}, LS/c;->c(FF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-float/2addr p1, v1

    .line 25
    cmpg-float p2, p1, v2

    .line 26
    .line 27
    iget-object v0, p0, LS/c;->e:Landroid/view/animation/AccelerateInterpolator;

    .line 28
    .line 29
    if-gez p2, :cond_0

    .line 30
    .line 31
    neg-float p1, p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    neg-float p1, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    cmpl-float p2, p1, v2

    .line 39
    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-static {p1, p2, v0}, LS/c;->b(FFF)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move p1, v2

    .line 56
    :goto_1
    cmpl-float p2, p1, v2

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    return v2

    .line 61
    :cond_2
    iget-object v0, p0, LS/c;->r:[F

    .line 62
    .line 63
    aget v0, v0, p4

    .line 64
    .line 65
    iget-object v1, p0, LS/c;->s:[F

    .line 66
    .line 67
    aget v1, v1, p4

    .line 68
    .line 69
    iget-object v2, p0, LS/c;->t:[F

    .line 70
    .line 71
    aget p4, v2, p4

    .line 72
    .line 73
    mul-float/2addr v0, p3

    .line 74
    if-lez p2, :cond_3

    .line 75
    .line 76
    mul-float/2addr p1, v0

    .line 77
    invoke-static {p1, v1, p4}, LS/c;->b(FFF)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_3
    neg-float p1, p1

    .line 83
    mul-float/2addr p1, v0

    .line 84
    invoke-static {p1, v1, p4}, LS/c;->b(FFF)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    neg-float p1, p1

    .line 89
    return p1
.end method

.method public final c(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, LS/c;->p:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    if-gez v1, :cond_4

    .line 21
    .line 22
    neg-float p2, p2

    .line 23
    div-float/2addr p1, p2

    .line 24
    return p1

    .line 25
    :cond_2
    cmpg-float v3, p1, p2

    .line 26
    .line 27
    if-gez v3, :cond_4

    .line 28
    .line 29
    cmpl-float v3, p1, v0

    .line 30
    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-ltz v3, :cond_3

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    sub-float/2addr v4, p1

    .line 37
    return v4

    .line 38
    :cond_3
    iget-boolean p1, p0, LS/c;->x:Z

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    return v4

    .line 45
    :cond_4
    :goto_0
    return v0
.end method

.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, LS/c;->b:LS/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LS/a;->getVerticalDirection()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, LS/a;->getHorizontalDirection()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, LS/c;->canTargetScrollVertically(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, LS/c;->canTargetScrollHorizontally(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, LS/c;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, LS/c;->b:LS/a;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_4

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    if-eq v0, p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-boolean p1, p0, LS/c;->v:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iput-boolean v1, p0, LS/c;->x:Z

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    invoke-virtual {v2}, LS/a;->requestStop()V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    iput-boolean v3, p0, LS/c;->w:Z

    .line 38
    .line 39
    iput-boolean v1, p0, LS/c;->u:Z

    .line 40
    .line 41
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    iget-object v5, p0, LS/c;->f:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    invoke-virtual {p0, v0, v4, v6, v1}, LS/c;->a(FFFI)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-float p1, p1

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-virtual {p0, p2, p1, v4, v3}, LS/c;->a(FFFI)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v2, v0, p1}, LS/a;->setTargetVelocity(FF)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, p0, LS/c;->x:Z

    .line 83
    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0}, LS/c;->d()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget-object p1, p0, LS/c;->j:LS/b;

    .line 93
    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    new-instance p1, LS/b;

    .line 97
    .line 98
    invoke-direct {p1, p0}, LS/b;-><init>(LS/c;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, LS/c;->j:LS/b;

    .line 102
    .line 103
    :cond_5
    iput-boolean v3, p0, LS/c;->x:Z

    .line 104
    .line 105
    iput-boolean v3, p0, LS/c;->v:Z

    .line 106
    .line 107
    iget-boolean p1, p0, LS/c;->u:Z

    .line 108
    .line 109
    if-nez p1, :cond_6

    .line 110
    .line 111
    iget p1, p0, LS/c;->q:I

    .line 112
    .line 113
    if-lez p1, :cond_6

    .line 114
    .line 115
    iget-object p2, p0, LS/c;->j:LS/b;

    .line 116
    .line 117
    int-to-long v6, p1

    .line 118
    invoke-static {v5, p2, v6, v7}, LM/p0;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object p1, p0, LS/c;->j:LS/b;

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 125
    .line 126
    .line 127
    :goto_0
    iput-boolean v3, p0, LS/c;->u:Z

    .line 128
    .line 129
    :cond_7
    :goto_1
    return v1
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)LS/c;
    .locals 0

    .line 1
    iput p1, p0, LS/c;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEdgeType(I)LS/c;
    .locals 0

    .line 1
    iput p1, p0, LS/c;->p:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnabled(Z)LS/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, LS/c;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, LS/c;->v:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LS/c;->x:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, LS/c;->b:LS/a;

    .line 16
    .line 17
    invoke-virtual {v0}, LS/a;->requestStop()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-boolean p1, p0, LS/c;->y:Z

    .line 21
    .line 22
    return-object p0
.end method

.method public setMaximumEdges(FF)LS/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LS/c;->n:[F

    .line 3
    .line 4
    aput p1, v1, v0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, v1, p1

    .line 8
    .line 9
    return-object p0
.end method

.method public setMaximumVelocity(FF)LS/c;
    .locals 3

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget-object v1, p0, LS/c;->t:[F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    div-float/2addr p2, v0

    .line 11
    aput p2, v1, p1

    .line 12
    .line 13
    return-object p0
.end method

.method public setMinimumVelocity(FF)LS/c;
    .locals 3

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget-object v1, p0, LS/c;->s:[F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    div-float/2addr p2, v0

    .line 11
    aput p2, v1, p1

    .line 12
    .line 13
    return-object p0
.end method

.method public setRampDownDuration(I)LS/c;
    .locals 1

    .line 1
    iget-object v0, p0, LS/c;->b:LS/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LS/a;->setRampDownDuration(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRampUpDuration(I)LS/c;
    .locals 1

    .line 1
    iget-object v0, p0, LS/c;->b:LS/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LS/a;->setRampUpDuration(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRelativeEdges(FF)LS/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LS/c;->m:[F

    .line 3
    .line 4
    aput p1, v1, v0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, v1, p1

    .line 8
    .line 9
    return-object p0
.end method

.method public setRelativeVelocity(FF)LS/c;
    .locals 3

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget-object v1, p0, LS/c;->r:[F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    div-float/2addr p2, v0

    .line 11
    aput p2, v1, p1

    .line 12
    .line 13
    return-object p0
.end method
