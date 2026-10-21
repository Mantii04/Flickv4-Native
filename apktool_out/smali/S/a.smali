.class public final LS/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:J

.field public j:F

.field public k:I


# virtual methods
.method public final a(J)F
    .locals 8

    .line 1
    iget-wide v0, p0, LS/a;->e:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    return v3

    .line 9
    :cond_0
    iget-wide v4, p0, LS/a;->i:J

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    cmp-long v2, v4, v6

    .line 14
    .line 15
    const/high16 v6, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-ltz v2, :cond_2

    .line 18
    .line 19
    cmp-long v2, p1, v4

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sub-long/2addr p1, v4

    .line 25
    iget v0, p0, LS/a;->j:F

    .line 26
    .line 27
    sub-float v1, v6, v0

    .line 28
    .line 29
    long-to-float p1, p1

    .line 30
    iget p2, p0, LS/a;->k:I

    .line 31
    .line 32
    int-to-float p2, p2

    .line 33
    div-float/2addr p1, p2

    .line 34
    invoke-static {p1, v3, v6}, LS/c;->b(FFF)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    mul-float/2addr p1, v0

    .line 39
    add-float/2addr p1, v1

    .line 40
    return p1

    .line 41
    :cond_2
    :goto_0
    sub-long/2addr p1, v0

    .line 42
    long-to-float p1, p1

    .line 43
    iget p2, p0, LS/a;->a:I

    .line 44
    .line 45
    int-to-float p2, p2

    .line 46
    div-float/2addr p1, p2

    .line 47
    invoke-static {p1, v3, v6}, LS/c;->b(FFF)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/high16 p2, 0x3f000000    # 0.5f

    .line 52
    .line 53
    mul-float/2addr p1, p2

    .line 54
    return p1
.end method

.method public computeScrollDelta()V
    .locals 5

    .line 1
    iget-wide v0, p0, LS/a;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, LS/a;->a(J)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/high16 v3, -0x3f800000    # -4.0f

    .line 18
    .line 19
    mul-float/2addr v3, v2

    .line 20
    mul-float/2addr v3, v2

    .line 21
    const/high16 v4, 0x40800000    # 4.0f

    .line 22
    .line 23
    mul-float/2addr v2, v4

    .line 24
    add-float/2addr v2, v3

    .line 25
    iget-wide v3, p0, LS/a;->f:J

    .line 26
    .line 27
    sub-long v3, v0, v3

    .line 28
    .line 29
    iput-wide v0, p0, LS/a;->f:J

    .line 30
    .line 31
    long-to-float v0, v3

    .line 32
    mul-float/2addr v0, v2

    .line 33
    iget v1, p0, LS/a;->c:F

    .line 34
    .line 35
    mul-float/2addr v1, v0

    .line 36
    float-to-int v1, v1

    .line 37
    iput v1, p0, LS/a;->g:I

    .line 38
    .line 39
    iget v1, p0, LS/a;->d:F

    .line 40
    .line 41
    mul-float/2addr v0, v1

    .line 42
    float-to-int v0, v0

    .line 43
    iput v0, p0, LS/a;->h:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public getDeltaX()I
    .locals 1

    .line 1
    iget v0, p0, LS/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .line 1
    iget v0, p0, LS/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalDirection()I
    .locals 2

    .line 1
    iget v0, p0, LS/a;->c:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    return v0
.end method

.method public getVerticalDirection()I
    .locals 2

    .line 1
    iget v0, p0, LS/a;->d:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    return v0
.end method

.method public isFinished()Z
    .locals 6

    .line 1
    iget-wide v0, p0, LS/a;->i:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, LS/a;->i:J

    .line 14
    .line 15
    iget v4, p0, LS/a;->k:I

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    add-long/2addr v2, v4

    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public requestStop()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, LS/a;->e:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    iget v3, p0, LS/a;->b:I

    .line 11
    .line 12
    if-le v2, v3, :cond_0

    .line 13
    .line 14
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-gez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :cond_1
    :goto_0
    iput v2, p0, LS/a;->k:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, LS/a;->a(J)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, p0, LS/a;->j:F

    .line 26
    .line 27
    iput-wide v0, p0, LS/a;->i:J

    .line 28
    .line 29
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, LS/a;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, LS/a;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 0

    .line 1
    iput p1, p0, LS/a;->c:F

    .line 2
    .line 3
    iput p2, p0, LS/a;->d:F

    .line 4
    .line 5
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, LS/a;->e:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    iput-wide v2, p0, LS/a;->i:J

    .line 10
    .line 11
    iput-wide v0, p0, LS/a;->f:J

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    iput v0, p0, LS/a;->j:F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, LS/a;->g:I

    .line 19
    .line 20
    iput v0, p0, LS/a;->h:I

    .line 21
    .line 22
    return-void
.end method
