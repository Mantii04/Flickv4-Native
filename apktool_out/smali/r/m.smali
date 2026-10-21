.class public final Lr/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public b:Z

.field public e:I

.field public f:I

.field public j:I

.field public m:F

.field public n:Z

.field public final p:[F

.field public final q:[F

.field public r:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public s:[Lr/c;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lr/m;->e:I

    .line 6
    .line 7
    iput p2, p0, Lr/m;->f:I

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lr/m;->j:I

    .line 11
    .line 12
    iput-boolean p2, p0, Lr/m;->n:Z

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    iput-object v1, p0, Lr/m;->p:[F

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lr/m;->q:[F

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    new-array v0, v0, [Lr/c;

    .line 27
    .line 28
    iput-object v0, p0, Lr/m;->s:[Lr/c;

    .line 29
    .line 30
    iput p2, p0, Lr/m;->t:I

    .line 31
    .line 32
    iput p2, p0, Lr/m;->u:I

    .line 33
    .line 34
    iput-object p1, p0, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final addToRow(Lr/c;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr/m;->t:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lr/m;->s:[Lr/c;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lr/m;->s:[Lr/c;

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    if-lt v1, v2, :cond_2

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Lr/c;

    .line 29
    .line 30
    iput-object v0, p0, Lr/m;->s:[Lr/c;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lr/m;->s:[Lr/c;

    .line 33
    .line 34
    iget v1, p0, Lr/m;->t:I

    .line 35
    .line 36
    aput-object p1, v0, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Lr/m;->t:I

    .line 41
    .line 42
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lr/m;

    invoke-virtual {p0, p1}, Lr/m;->compareTo(Lr/m;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lr/m;)I
    .locals 1

    .line 2
    iget v0, p0, Lr/m;->e:I

    iget p1, p1, Lr/m;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final removeFromRow(Lr/c;)V
    .locals 4

    .line 1
    iget v0, p0, Lr/m;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lr/m;->s:[Lr/c;

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    if-ne v2, p1, :cond_1

    .line 11
    .line 12
    :goto_1
    add-int/lit8 p1, v0, -0x1

    .line 13
    .line 14
    if-ge v1, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lr/m;->s:[Lr/c;

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    aget-object v3, p1, v2

    .line 21
    .line 22
    aput-object v3, p1, v1

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget p1, p0, Lr/m;->t:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iput p1, p0, Lr/m;->t:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 6

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 2
    .line 3
    iput-object v0, p0, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lr/m;->j:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lr/m;->e:I

    .line 10
    .line 11
    iput v1, p0, Lr/m;->f:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lr/m;->m:F

    .line 15
    .line 16
    iput-boolean v0, p0, Lr/m;->n:Z

    .line 17
    .line 18
    iget v2, p0, Lr/m;->t:I

    .line 19
    .line 20
    move v3, v0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lr/m;->s:[Lr/c;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v5, v4, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput v0, p0, Lr/m;->t:I

    .line 32
    .line 33
    iput v0, p0, Lr/m;->u:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lr/m;->b:Z

    .line 36
    .line 37
    iget-object v0, p0, Lr/m;->q:[F

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setFinalValue(Lr/f;F)V
    .locals 3

    .line 1
    iput p2, p0, Lr/m;->m:F

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lr/m;->n:Z

    .line 5
    .line 6
    iget p2, p0, Lr/m;->t:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lr/m;->f:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lr/m;->s:[Lr/c;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1, p0, v0}, Lr/c;->updateFromFinalVariable(Lr/f;Lr/m;Z)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput v0, p0, Lr/m;->t:I

    .line 26
    .line 27
    return-void
.end method

.method public setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/m;->r:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lr/m;->e:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Lr/f;Lr/c;)V
    .locals 4

    .line 1
    iget v0, p0, Lr/m;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lr/m;->s:[Lr/c;

    .line 8
    .line 9
    aget-object v3, v3, v2

    .line 10
    .line 11
    invoke-virtual {v3, p1, p2, v1}, Lr/c;->updateFromRow(Lr/f;Lr/c;Z)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput v1, p0, Lr/m;->t:I

    .line 18
    .line 19
    return-void
.end method
