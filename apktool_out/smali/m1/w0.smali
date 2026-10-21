.class public abstract Lm1/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lm1/i0;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Lm1/u0;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lm1/w0;->a:I

    .line 6
    .line 7
    new-instance v0, Lm1/u0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, v1}, Lm1/u0;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lm1/w0;->g:Lm1/u0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget v1, p0, Lm1/w0;->a:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lm1/w0;->stop()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-boolean v1, p0, Lm1/w0;->d:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Lm1/w0;->f:Landroid/view/View;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lm1/w0;->c:Lm1/i0;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget v1, p0, Lm1/w0;->a:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lm1/w0;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    cmpl-float v5, v3, v4

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    iget v5, v1, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    cmpl-float v4, v5, v4

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lm1/w0;->d:Z

    .line 64
    .line 65
    iget-object v3, p0, Lm1/w0;->f:Landroid/view/View;

    .line 66
    .line 67
    iget-object v4, p0, Lm1/w0;->g:Lm1/u0;

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lm1/w0;->getChildPosition(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget v5, p0, Lm1/w0;->a:I

    .line 76
    .line 77
    if-ne v3, v5, :cond_4

    .line 78
    .line 79
    iget-object v2, p0, Lm1/w0;->f:Landroid/view/View;

    .line 80
    .line 81
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 82
    .line 83
    invoke-virtual {p0, v2, v3, v4}, Lm1/w0;->onTargetFound(Landroid/view/View;Lm1/x0;Lm1/u0;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v0}, Lm1/u0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lm1/w0;->stop()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string v3, "RecyclerView"

    .line 94
    .line 95
    const-string v5, "Passed over target position while smooth scrolling."

    .line 96
    .line 97
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lm1/w0;->f:Landroid/view/View;

    .line 101
    .line 102
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lm1/w0;->e:Z

    .line 103
    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2, v2, v4}, Lm1/w0;->onSeekTargetStep(IILm1/x0;Lm1/u0;)V

    .line 109
    .line 110
    .line 111
    iget p1, v4, Lm1/u0;->d:I

    .line 112
    .line 113
    const/4 p2, 0x1

    .line 114
    if-ltz p1, :cond_6

    .line 115
    .line 116
    move v1, p2

    .line 117
    :cond_6
    invoke-virtual {v4, v0}, Lm1/u0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 118
    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    iget-boolean p1, p0, Lm1/w0;->e:Z

    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iput-boolean p2, p0, Lm1/w0;->d:Z

    .line 127
    .line 128
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:Lm1/A0;

    .line 129
    .line 130
    invoke-virtual {p1}, Lm1/A0;->a()V

    .line 131
    .line 132
    .line 133
    :cond_7
    return-void
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm1/w0;->getLayoutManager()Lm1/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lm1/v0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lm1/v0;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lm1/v0;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lm1/v0;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "RecyclerView"

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lm1/i0;->findViewByPosition(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLayoutManager()Lm1/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/w0;->c:Lm1/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lm1/w0;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm1/w0;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm1/w0;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    mul-float/2addr v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 5
    .line 6
    mul-float/2addr v1, v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    float-to-double v0, v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float v0, v0

    .line 14
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 15
    .line 16
    div-float/2addr v1, v0

    .line 17
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 18
    .line 19
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    div-float/2addr v1, v0

    .line 22
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 23
    .line 24
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm1/w0;->getChildPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lm1/w0;->getTargetPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lm1/w0;->f:Landroid/view/View;

    .line 12
    .line 13
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "RecyclerView"

    .line 18
    .line 19
    const-string v0, "smooth scroll target view has been attached"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public abstract onSeekTargetStep(IILm1/x0;Lm1/u0;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetFound(Landroid/view/View;Lm1/x0;Lm1/u0;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm1/w0;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm1/w0;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lm1/w0;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lm1/w0;->onStop()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, v1, Lm1/x0;->a:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lm1/w0;->f:Landroid/view/View;

    .line 21
    .line 22
    iput v2, p0, Lm1/w0;->a:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lm1/w0;->d:Z

    .line 25
    .line 26
    iget-object v0, p0, Lm1/w0;->c:Lm1/i0;

    .line 27
    .line 28
    iget-object v2, v0, Lm1/i0;->e:Lm1/w0;

    .line 29
    .line 30
    if-ne v2, p0, :cond_1

    .line 31
    .line 32
    iput-object v1, v0, Lm1/i0;->e:Lm1/w0;

    .line 33
    .line 34
    :cond_1
    iput-object v1, p0, Lm1/w0;->c:Lm1/i0;

    .line 35
    .line 36
    iput-object v1, p0, Lm1/w0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    return-void
.end method
