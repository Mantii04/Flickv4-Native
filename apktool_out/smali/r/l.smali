.class public final Lr/l;
.super Lr/c;
.source "SourceFile"


# instance fields
.field public f:[Lr/m;

.field public g:[Lr/m;

.field public h:I

.field public final i:Lr/k;


# direct methods
.method public constructor <init>(Lr/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lr/c;-><init>(Lr/d;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x80

    .line 5
    .line 6
    new-array v0, p1, [Lr/m;

    .line 7
    .line 8
    iput-object v0, p0, Lr/l;->f:[Lr/m;

    .line 9
    .line 10
    new-array p1, p1, [Lr/m;

    .line 11
    .line 12
    iput-object p1, p0, Lr/l;->g:[Lr/m;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lr/l;->h:I

    .line 16
    .line 17
    new-instance p1, Lr/k;

    .line 18
    .line 19
    invoke-direct {p1, p0, p0}, Lr/k;-><init>(Lr/l;Lr/l;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lr/l;->i:Lr/k;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public addError(Lr/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr/l;->i:Lr/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr/k;->init(Lr/m;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lr/k;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lr/m;->q:[F

    .line 10
    .line 11
    iget v1, p1, Lr/m;->j:I

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lr/l;->c(Lr/m;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(Lr/m;)V
    .locals 5

    .line 1
    iget v0, p0, Lr/l;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-le v0, v3, :cond_0

    .line 9
    .line 10
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lr/m;

    .line 18
    .line 19
    iput-object v0, p0, Lr/l;->f:[Lr/m;

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Lr/m;

    .line 29
    .line 30
    iput-object v0, p0, Lr/l;->g:[Lr/m;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lr/l;->f:[Lr/m;

    .line 33
    .line 34
    iget v2, p0, Lr/l;->h:I

    .line 35
    .line 36
    aput-object p1, v0, v2

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    iput v3, p0, Lr/l;->h:I

    .line 41
    .line 42
    if-le v3, v1, :cond_2

    .line 43
    .line 44
    aget-object v0, v0, v2

    .line 45
    .line 46
    iget v0, v0, Lr/m;->e:I

    .line 47
    .line 48
    iget v2, p1, Lr/m;->e:I

    .line 49
    .line 50
    if-le v0, v2, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    move v2, v0

    .line 54
    :goto_0
    iget v3, p0, Lr/l;->h:I

    .line 55
    .line 56
    if-ge v2, v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lr/l;->g:[Lr/m;

    .line 59
    .line 60
    iget-object v4, p0, Lr/l;->f:[Lr/m;

    .line 61
    .line 62
    aget-object v4, v4, v2

    .line 63
    .line 64
    aput-object v4, v3, v2

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lr/l;->g:[Lr/m;

    .line 70
    .line 71
    new-instance v4, Lr/j;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget v2, p0, Lr/l;->h:I

    .line 80
    .line 81
    if-ge v0, v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 84
    .line 85
    iget-object v3, p0, Lr/l;->g:[Lr/m;

    .line 86
    .line 87
    aget-object v3, v3, v0

    .line 88
    .line 89
    aput-object v3, v2, v0

    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iput-boolean v1, p1, Lr/m;->b:Z

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Lr/m;->addToRow(Lr/c;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr/l;->h:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lr/c;->b:F

    .line 6
    .line 7
    return-void
.end method

.method public final d(Lr/m;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lr/l;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p1, :cond_1

    .line 12
    .line 13
    :goto_1
    iget v2, p0, Lr/l;->h:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, -0x1

    .line 16
    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    aget-object v4, v2, v3

    .line 24
    .line 25
    aput-object v4, v2, v1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    iput v2, p0, Lr/l;->h:I

    .line 32
    .line 33
    iput-boolean v0, p1, Lr/m;->b:Z

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public getPivotCandidate(Lr/f;[Z)Lr/m;
    .locals 4

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, p1

    .line 4
    :goto_0
    iget v2, p0, Lr/l;->h:I

    .line 5
    .line 6
    if-ge v0, v2, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 9
    .line 10
    aget-object v2, v2, v0

    .line 11
    .line 12
    iget v3, v2, Lr/m;->e:I

    .line 13
    .line 14
    aget-boolean v3, p2, v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v3, p0, Lr/l;->i:Lr/k;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lr/k;->init(Lr/m;)V

    .line 22
    .line 23
    .line 24
    if-ne v1, p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Lr/k;->isNegative()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 34
    .line 35
    aget-object v2, v2, v1

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lr/k;->isSmallerThan(Lr/m;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    :goto_1
    move v1, v0

    .line 44
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    if-ne v1, p1, :cond_4

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :cond_4
    iget-object p1, p0, Lr/l;->f:[Lr/m;

    .line 52
    .line 53
    aget-object p1, p1, v1

    .line 54
    .line 55
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lr/l;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " goal -> ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lr/c;->b:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ") : "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget v2, p0, Lr/l;->h:I

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lr/l;->f:[Lr/m;

    .line 28
    .line 29
    aget-object v2, v2, v1

    .line 30
    .line 31
    iget-object v3, p0, Lr/l;->i:Lr/k;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lr/k;->init(Lr/m;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " "

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public updateFromRow(Lr/f;Lr/c;Z)V
    .locals 5

    .line 1
    iget-object p1, p2, Lr/c;->a:Lr/m;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p2, Lr/c;->d:Lr/b;

    .line 7
    .line 8
    invoke-interface {p3}, Lr/b;->getCurrentSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p3, v1}, Lr/b;->getVariable(I)Lr/m;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p3, v1}, Lr/b;->getVariableValue(I)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lr/l;->i:Lr/k;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Lr/k;->init(Lr/m;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p1, v3}, Lr/k;->addToGoal(Lr/m;F)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lr/l;->c(Lr/m;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v2, p0, Lr/c;->b:F

    .line 38
    .line 39
    iget v4, p2, Lr/c;->b:F

    .line 40
    .line 41
    mul-float/2addr v4, v3

    .line 42
    add-float/2addr v4, v2

    .line 43
    iput v4, p0, Lr/c;->b:F

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0, p1}, Lr/l;->d(Lr/m;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
