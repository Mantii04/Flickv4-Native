.class public final Landroidx/leanback/widget/B1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroidx/leanback/widget/B1;->e:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Landroidx/leanback/widget/B1;->f:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/leanback/widget/B1;->g:I

    .line 12
    .line 13
    const/high16 v0, 0x42480000    # 50.0f

    .line 14
    .line 15
    iput v0, p0, Landroidx/leanback/widget/B1;->h:F

    .line 16
    .line 17
    const/high16 v0, -0x80000000

    .line 18
    .line 19
    iput v0, p0, Landroidx/leanback/widget/B1;->b:I

    .line 20
    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    iput v0, p0, Landroidx/leanback/widget/B1;->a:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 2
    .line 3
    const/high16 v1, 0x42c80000    # 100.0f

    .line 4
    .line 5
    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Landroidx/leanback/widget/B1;->g:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, p0, Landroidx/leanback/widget/B1;->i:I

    .line 15
    .line 16
    add-int/2addr v0, v3

    .line 17
    :goto_0
    iget v3, p0, Landroidx/leanback/widget/B1;->h:F

    .line 18
    .line 19
    cmpl-float v2, v3, v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v2, p0, Landroidx/leanback/widget/B1;->i:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    mul-float/2addr v2, v3

    .line 27
    div-float/2addr v2, v1

    .line 28
    float-to-int v1, v2

    .line 29
    add-int/2addr v0, v1

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/B1;->g:I

    .line 32
    .line 33
    if-ltz v0, :cond_3

    .line 34
    .line 35
    iget v3, p0, Landroidx/leanback/widget/B1;->i:I

    .line 36
    .line 37
    sub-int/2addr v3, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    neg-int v3, v0

    .line 40
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/B1;->h:F

    .line 41
    .line 42
    cmpl-float v2, v0, v2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    iget v2, p0, Landroidx/leanback/widget/B1;->i:I

    .line 47
    .line 48
    int-to-float v2, v2

    .line 49
    mul-float/2addr v2, v0

    .line 50
    div-float/2addr v2, v1

    .line 51
    float-to-int v0, v2

    .line 52
    sub-int/2addr v3, v0

    .line 53
    :cond_4
    return v3
.end method

.method public getClientSize()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->i:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/leanback/widget/B1;->j:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/leanback/widget/B1;->k:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public getMaxScroll()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinScroll()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingMax()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getPaddingMin()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getScroll(I)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->isMinUnknown()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->isMaxUnknown()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    iget v4, p0, Landroidx/leanback/widget/B1;->j:I

    .line 20
    .line 21
    sub-int v5, v1, v4

    .line 22
    .line 23
    iget-boolean v6, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 24
    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    iget v6, p0, Landroidx/leanback/widget/B1;->f:I

    .line 28
    .line 29
    and-int/lit8 v6, v6, 0x1

    .line 30
    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v6, p0, Landroidx/leanback/widget/B1;->f:I

    .line 35
    .line 36
    and-int/lit8 v6, v6, 0x2

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    :goto_0
    iget v6, p0, Landroidx/leanback/widget/B1;->b:I

    .line 41
    .line 42
    sub-int v7, p1, v6

    .line 43
    .line 44
    if-gt v7, v5, :cond_2

    .line 45
    .line 46
    sub-int/2addr v6, v4

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 50
    .line 51
    if-le v6, p1, :cond_1

    .line 52
    .line 53
    return p1

    .line 54
    :cond_1
    return v6

    .line 55
    :cond_2
    if-nez v3, :cond_5

    .line 56
    .line 57
    sub-int v3, v0, v1

    .line 58
    .line 59
    iget v4, p0, Landroidx/leanback/widget/B1;->k:I

    .line 60
    .line 61
    sub-int/2addr v3, v4

    .line 62
    iget-boolean v5, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 63
    .line 64
    if-nez v5, :cond_3

    .line 65
    .line 66
    iget v5, p0, Landroidx/leanback/widget/B1;->f:I

    .line 67
    .line 68
    and-int/lit8 v5, v5, 0x2

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget v5, p0, Landroidx/leanback/widget/B1;->f:I

    .line 74
    .line 75
    and-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    :goto_1
    iget v5, p0, Landroidx/leanback/widget/B1;->a:I

    .line 80
    .line 81
    sub-int v6, v5, p1

    .line 82
    .line 83
    if-gt v6, v3, :cond_5

    .line 84
    .line 85
    sub-int/2addr v0, v4

    .line 86
    sub-int/2addr v5, v0

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 90
    .line 91
    if-ge v5, p1, :cond_4

    .line 92
    .line 93
    return p1

    .line 94
    :cond_4
    return v5

    .line 95
    :cond_5
    sub-int/2addr p1, v1

    .line 96
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public invalidateScrollMax()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroidx/leanback/widget/B1;->a:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/leanback/widget/B1;->c:I

    .line 7
    .line 8
    return-void
.end method

.method public invalidateScrollMin()V
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    iput v0, p0, Landroidx/leanback/widget/B1;->b:I

    .line 4
    .line 5
    iput v0, p0, Landroidx/leanback/widget/B1;->d:I

    .line 6
    .line 7
    return-void
.end method

.method public isMaxUnknown()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->a:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isMinUnknown()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/B1;->b:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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

.method public setPadding(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/B1;->j:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/leanback/widget/B1;->k:I

    .line 4
    .line 5
    return-void
.end method

.method public setReversedFlow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/B1;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/B1;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/B1;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    .line 14
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    iput p1, p0, Landroidx/leanback/widget/B1;->h:F

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " min:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/leanback/widget/B1;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroidx/leanback/widget/B1;->d:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " max:"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroidx/leanback/widget/B1;->a:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public updateMinMax(IIII)V
    .locals 4

    .line 1
    iput p1, p0, Landroidx/leanback/widget/B1;->b:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/leanback/widget/B1;->a:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->getClientSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->a()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->isMinUnknown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/B1;->isMaxUnknown()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v2, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget v2, p0, Landroidx/leanback/widget/B1;->f:I

    .line 28
    .line 29
    and-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v2, p0, Landroidx/leanback/widget/B1;->f:I

    .line 35
    .line 36
    and-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/B1;->b:I

    .line 41
    .line 42
    iget v3, p0, Landroidx/leanback/widget/B1;->j:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    iput v2, p0, Landroidx/leanback/widget/B1;->d:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sub-int v2, p3, p2

    .line 49
    .line 50
    iput v2, p0, Landroidx/leanback/widget/B1;->d:I

    .line 51
    .line 52
    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 53
    .line 54
    iget-boolean v2, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget v2, p0, Landroidx/leanback/widget/B1;->f:I

    .line 59
    .line 60
    and-int/lit8 v2, v2, 0x2

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget v2, p0, Landroidx/leanback/widget/B1;->f:I

    .line 66
    .line 67
    and-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    :goto_2
    iget v2, p0, Landroidx/leanback/widget/B1;->a:I

    .line 72
    .line 73
    iget v3, p0, Landroidx/leanback/widget/B1;->j:I

    .line 74
    .line 75
    sub-int/2addr v2, v3

    .line 76
    sub-int/2addr v2, p1

    .line 77
    iput v2, p0, Landroidx/leanback/widget/B1;->c:I

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    sub-int p1, p4, p2

    .line 81
    .line 82
    iput p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 83
    .line 84
    :cond_5
    :goto_3
    if-nez v1, :cond_d

    .line 85
    .line 86
    if-nez v0, :cond_d

    .line 87
    .line 88
    iget-boolean p1, p0, Landroidx/leanback/widget/B1;->l:Z

    .line 89
    .line 90
    if-nez p1, :cond_9

    .line 91
    .line 92
    iget p1, p0, Landroidx/leanback/widget/B1;->f:I

    .line 93
    .line 94
    and-int/lit8 v0, p1, 0x1

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    iget p1, p0, Landroidx/leanback/widget/B1;->e:I

    .line 99
    .line 100
    and-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 105
    .line 106
    sub-int/2addr p4, p2

    .line 107
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 112
    .line 113
    :cond_6
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 114
    .line 115
    iget p2, p0, Landroidx/leanback/widget/B1;->c:I

    .line 116
    .line 117
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    and-int/lit8 p1, p1, 0x2

    .line 125
    .line 126
    if-eqz p1, :cond_d

    .line 127
    .line 128
    iget p1, p0, Landroidx/leanback/widget/B1;->e:I

    .line 129
    .line 130
    and-int/lit8 p1, p1, 0x2

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    iget p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 135
    .line 136
    sub-int/2addr p3, p2

    .line 137
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iput p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 142
    .line 143
    :cond_8
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 144
    .line 145
    iget p2, p0, Landroidx/leanback/widget/B1;->c:I

    .line 146
    .line 147
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iput p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 152
    .line 153
    return-void

    .line 154
    :cond_9
    iget p1, p0, Landroidx/leanback/widget/B1;->f:I

    .line 155
    .line 156
    and-int/lit8 v0, p1, 0x1

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    iget p1, p0, Landroidx/leanback/widget/B1;->e:I

    .line 161
    .line 162
    and-int/lit8 p1, p1, 0x1

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    iget p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 167
    .line 168
    sub-int/2addr p3, p2

    .line 169
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 174
    .line 175
    :cond_a
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 176
    .line 177
    iget p2, p0, Landroidx/leanback/widget/B1;->c:I

    .line 178
    .line 179
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 184
    .line 185
    return-void

    .line 186
    :cond_b
    and-int/lit8 p1, p1, 0x2

    .line 187
    .line 188
    if-eqz p1, :cond_d

    .line 189
    .line 190
    iget p1, p0, Landroidx/leanback/widget/B1;->e:I

    .line 191
    .line 192
    and-int/lit8 p1, p1, 0x2

    .line 193
    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 197
    .line 198
    sub-int/2addr p4, p2

    .line 199
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iput p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 204
    .line 205
    :cond_c
    iget p1, p0, Landroidx/leanback/widget/B1;->d:I

    .line 206
    .line 207
    iget p2, p0, Landroidx/leanback/widget/B1;->c:I

    .line 208
    .line 209
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iput p1, p0, Landroidx/leanback/widget/B1;->c:I

    .line 214
    .line 215
    :cond_d
    return-void
.end method
